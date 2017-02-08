# -*- coding: utf-8 -*-
# vim: tabstop=4 shiftwidth=4 softtabstop=4
import sys, types
from flask import Flask, render_template, Markup

reload(sys)
sys.setdefaultencoding( "utf-8" )

app = Flask(__name__)

def get_module_info(module_name):
    result = []
    module =  __import__(module_name.split(".")[0])
    for m in module_name.split(".")[1:]:
        module = getattr(module, m)
    for attr in dir(module):
        at = {}
        at['name']      = attr
        at['type']      = Markup.escape(str(type(getattr(module, attr))).split("'")[1])
        at['doc']       = ""
        at['is_func']   = False
        at['is_module'] = False
        at['value']     = "test faild"
        if hasattr(getattr(module, attr), '__call__'):
            at['is_func'] = True
            if attr not in ["exit", "abort"]:
                try:
                    at['value'] = Markup.escape(getattr(module, attr)())
                except:
                    pass
            if hasattr(getattr(module, attr), '__doc__'):
                at['doc'] = getattr(module, attr).__doc__
        else:
            try:
                at['value'] = Markup.escape(getattr(module, attr))
            except:
                pass
        if isinstance(getattr(module, attr), types.ModuleType):
            at['is_module'] = True
        result.append(at) 
    return result

@app.route('/', methods=['GET'])
def index():
    return render_template("index.tpl")

@app.route('/about', methods=['GET'])
def about():
    return render_template("about.tpl")

@app.route('/module/<string:module_name>', methods=['GET'])
def module_name(module_name):
    try:
        module_info = get_module_info(module_name)
    except:
        return render_template("error.tpl", error_info="获取模块 '%s' 信息失败，可能是该模块没有安装." % module_name)
    return render_template("module_info.tpl", module_info=module_info, module_name=module_name)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8003)
