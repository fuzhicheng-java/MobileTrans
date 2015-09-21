window.onload = function() {
	if (userName) {
		userName.onfocus = RegisterOnfocus;
		userName.onblur = RegisterOnblur;
	}
	if (password) {
		password.onfocus = divPasswordPromptInfoRegisterOnfocus;
		password.onblur = divPasswordPromptInfoRegisterOnblur;
	}
	if (email) {
		email.onfocus = divEmailPromptInfoRegisterOnfocus;
		email.onblur = divEmailPromptInfoRegisterOnblur;
	}
	if (confirmPassword) {
		confirmPassword.onfocus = divConfirmPasswordPromptInfoRegisterOnfocus;
		confirmPassword.onblur = divConfirmPasswordPromptInfoRegisterOnblur;
	}
	if (window.validateImage) {
		validateImage.onblur = function() {
			lbMsg.innerHTML = this.value ? "" : "验证码不能为空";
		};
	}
	if (window._czc) {
		_czc.push([ "_trackEvent", "注册加载", "加载" ]);
	}
};
function validate() {
	if (isUserValid != true) {
		userName.onblur();
	}
	if (isPasswordValid != true) {
		password.onblur();
	}
	if (isEmailValid != true) {
		email.onblur();
	}
	if (isConfirmPasswordValid != true) {
		confirmPassword.onblur();
	}
	if (window.validateImage && validateImage.value == "") {
		lbMsg.innerHTML = "验证码不能为空";
		return false;
	}
	var a = isUserValid && isPasswordValid && isEmailValid
			&& isConfirmPasswordValid;
	return a;
}
function RegisterOnfocus() {
	$$("divUserNamePromptInfo").style.display = "";
	$$("divUserNameErrorInfo").style.display = "none";
	$$("divUserNameRightInfo").style.display = "none";
}
function RegisterOnblur() {
	isUserValid = false;
	$$("divUserNamePromptInfo").style.display = "none";
	if (!this.value) {
		validateUserMsg(1);
		return;
	} else {
		if (this.value.length > 50) {
			validateUserMsg(4);
			return;
		}
	}
	var a = /^[a-zA-Z0-9_\@\.\-]{3,50}$/;
	if (!a.exec(this.value)) {
		validateUserMsg(5);
		return;
	} else {
		if (this.value.indexOf("--") > -1) {
			validateUserMsg(6);
			return;
		}
	}
	XMLHttp.sendReq("get", "/Handler/Register.ashx?type=u&keyword="
			+ escape(this.value), "", OnValidateUser);
}
function OnValidateUser(a) {
	var b = a.responseText;
	validateUserMsg(b);
}
function validateUserMsg(b) {
	var a = document.getElementById("lblUserName");
	if (b == 1 || b == 4 || b == 5 || b == 6) {
		$$("divUserNameErrorInfo").style.display = "";
		$$("divUserNamePromptInfo").style.display = "none";
		$$("divUserNameRightInfo").style.display = "none";
		if (b == 1) {
			a.innerHTML = "用户名不能为空";
		} else {
			if (b == 4) {
				a.innerHTML = "用户名长度不能超过50";
			} else {
				if (b == 5) {
					a.innerHTML = "用户名只能包含英文，数字";
				} else {
					if (b == 6) {
						a.innerHTML = "用户名不能包含--符号";
					}
				}
			}
		}
	} else {
		if (b == 2) {
			$$("divUserNameErrorInfo").style.display = "";
			$$("divUserNamePromptInfo").style.display = "none";
			$$("divUserNameRightInfo").style.display = "none";
			a.innerHTML = "用户名已经被占用！";
		} else {
			if (b == 3) {
				$$("divUserNameErrorInfo").style.display = "";
				$$("divUserNamePromptInfo").style.display = "none";
				$$("divUserNameRightInfo").style.display = "none";
				a.innerHTML = "用户名包含不良词语！";
			} else {
				$$("divUserNameErrorInfo").style.display = "none";
				$$("divUserNamePromptInfo").style.display = "none";
				$$("divUserNameRightInfo").style.display = "";
				isUserValid = true;
			}
		}
	}
}
function isPasswd(b) {
	var a = /^(.){6,20}$/;
	if (!a.exec(b)) {
		return false;
	}
	return true;
}
function divPasswordPromptInfoRegisterOnfocus() {
	$$("divPasswordPromptInfo").style.display = "";
	$$("divPasswordErrorInfo").style.display = "none";
	$$("divPasswordRightInfo").style.display = "none";
}
function divPasswordPromptInfoRegisterOnblur() {
	isPasswordValid = false;
	$$("divPasswordPromptInfo").style.display = "none";
	if (isPasswd(this.value)) {
		$$("divPasswordErrorInfo").style.display = "none";
		$$("divPasswordRightInfo").style.display = "";
		isPasswordValid = true;
	} else {
		$$("divPasswordErrorInfo").style.display = "";
		$$("divPasswordRightInfo").style.display = "none";
	}
}
function divConfirmPasswordPromptInfoRegisterOnfocus() {
	$$("divConfirmPasswordPromptInfo").style.display = "";
	$$("divConfirmPasswordErrorInfo").style.display = "none";
	$$("divConfirmPasswordRightInfo").style.display = "none";
}
function divConfirmPasswordPromptInfoRegisterOnblur() {
	isConfirmPasswordValid = false;
	$$("divConfirmPasswordPromptInfo").style.display = "none";
	if (isPasswd(this.value)) {
		if (this.value == password.value) {
			$$("divConfirmPasswordErrorInfo").style.display = "none";
			$$("divConfirmPasswordRightInfo").style.display = "";
			isConfirmPasswordValid = true;
		} else {
			$$("divConfirmPasswordErrorInfo").style.display = "";
			$$("divConfirmPasswordRightInfo").style.display = "none";
		}
	} else {
		$$("divConfirmPasswordErrorInfo").style.display = "";
		$$("divConfirmPasswordRightInfo").style.display = "none";
	}
}
function divEmailPromptInfoRegisterOnfocus() {
	$$("divEmailPromptInfo").style.display = "";
	$$("divEmailErrorInfo").style.display = "none";
	$$("divEmailRightInfo").style.display = "none";
	$$("divReg").style.display = "";
}
function divEmailPromptInfoRegisterOnblur() {
	isEmailValid = false;
	$$("divEmailPromptInfo").style.display = "none";
	var a = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/i;
	if (this.value.indexOf("@") > -1 && a.test(this.value)) {
		XMLHttp.sendReq("get", "/Handler/Register.ashx?type=e&keyword="
				+ escape(this.value), "", OnValidateEmail);
	} else {
		validateEmailMsg(1);
	}
}
function OnValidateEmail(a) {
	var b = a.responseText;
	validateEmailMsg(b);
}
function validateEmailMsg(a) {
	var c = document.getElementById("lblEmail");
	if (a == 1) {
		$$("divEmailErrorInfo").style.display = "";
		$$("divEmailPromptInfo").style.display = "none";
		$$("divEmailRightInfo").style.display = "none";
		c.innerHTML = "邮件地址格式输入错误！";
	} else {
		if (a == 2) {
			$$("divEmailErrorInfo").style.display = "";
			$$("divEmailPromptInfo").style.display = "none";
			$$("divEmailRightInfo").style.display = "none";
			c.innerHTML = "该邮件地址已经被占用！";
		} else {
			$$("divEmailRightInfo").style.display = "";
			$$("divEmailPromptInfo").style.display = "none";
			$$("divEmailErrorInfo").style.display = "none";
			isEmailValid = true;
			var b = email.value;
			if (b.indexOf("@hotmail") > -1) {
				$$("divEmailErrorInfo").innerHTML = "提示：使用<b style='color:red;'>hotmail</b>可能会收不到邮件，建议更改！";
				$$("divEmailRightInfo").style.display = "none";
				$$("divEmailErrorInfo").style.display = "";
			} else {
				if (b.indexOf("@outlook") > -1) {
					$$("divEmailErrorInfo").innerHTML = "提示：使用<b style='color:red;'>outlook</b>可能会收不到邮件，建议更改！";
					$$("divEmailRightInfo").style.display = "none";
					$$("divEmailErrorInfo").style.display = "";
				}
			}
		}
	}
}
var XMLHttp = {
	_objPool : [],
	_getInstance : function() {
		for (var a = 0; a < this._objPool.length; a++) {
			if (this._objPool[a].readyState == 0
					|| this._objPool[a].readyState == 4) {
				return this._objPool[a];
			}
		}
		this._objPool[this._objPool.length] = this._createObj();
		return this._objPool[this._objPool.length - 1];
	},
	_createObj : function() {
		if (window.XMLHttpRequest) {
			var b = new XMLHttpRequest();
		} else {
			var a = [ "MSXML2.XMLHTTP.5.0", "MSXML2.XMLHTTP.4.0",
					"MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP", "Microsoft.XMLHTTP" ];
			for (var d = 0; d < a.length; d++) {
				try {
					var b = new ActiveXObject(a[d]);
					break;
				} catch (c) {
				}
			}
		}
		return b;
	},
	sendReq : function(method, url, data, callback) {
		var objXMLHttp = this._getInstance();
		with (objXMLHttp) {
			try {
				var rn = window.rndnum || (new Date()).valueOf();
				if (url.indexOf("?") > 0) {
					url += "&randnum=" + rn;
				} else {
					url += "?randnum=" + rn;
				}
				open(method, url, true);
				setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded; charset=UTF-8");
				send(data);
				onreadystatechange = function() {
					if (objXMLHttp.readyState == 4
							&& (objXMLHttp.status == 200 || objXMLHttp.status == 304)) {
						callback(objXMLHttp);
					}
				};
			} catch (e) {
				alert(e);
			}
		}
	}
};