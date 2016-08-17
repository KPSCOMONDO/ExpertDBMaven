/**
 * 
 * JSON CONFIGURATION
 * @Channy 
 */
var CONFIGURATION = {
    SKILL_ID: null,
    CATEGORY_ID: null,
    getSkillId: function () {
        return this.SKILL_ID;
    },
    getCategoryId: function () {
        return this.CATEGORY_ID;
    },
    setSkillId: function (SkillId) {
        this.SKILL_ID = SkillId;
    },
    setCategoryId: function (CategoryId) {
        this.CATEGORY_ID = CategoryId;
    },
    getBase_url: function () {
        return "http://localhost:9999/rest";
    }
}

var DECLARATION = {
    fetchGender: function () {
        return [
            {
                "VALUE": "Male",
            },
            {
                "VALUE": "Female",
            },
            {
                "VALUE": "Male and female"
            }
        ];
    },
    fetchExperience: function () {
        return [
            {
                "MIN": 0,
                "MAX": 1,
            },
            {
                "MIN": 1,
                "MAX": 2,
            },
            {
                "MIN": 2,
                "MAX": 4,
            },
            {
                "MIN": 4,
                "MAX": 10,
            },
            {
                "MIN": 10,
            }
        ];
    },
    fetchSalary: function () {
        return [
            {
                "MIN": 0,
                "MAX": 199,
            },
            {
                "MIN": 200,
                "MAX": 499,
            },
            {
                "MIN": 1000,
                "MAX": 1999,
            },
            {
                "MIN": 2000,
            }
        ];
    },
    fetchAge: function () {
        return [
            {
                "MIN": 18,
                "MAX": 25
            },
            {
                "MIN": 26,
                "MAX": 29,
            },
            {
                "MIN": 30,
                "MAX": 35,
            },
            {
                "MIN": 35,
                "MAX": 39,
            },
            {
                "MIN": 40,
            }
        ];
    }
}


var APP_CACHE = {
    set: function (key, value) {
        localStorage.setItem(key, value);
    },
    get: function (key) {
        return localStorage.getItem(key);
    }
}

var DIALOG = {
    confirm: function (title, text, yesCallback) {
        swal({
            title: title,
            text: text,
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes'
        }).then(function () {
            yesCallback()
        })
    },
    success: function (title, text) {
        swal({
            title: title,
            text: text,
            confirmButtonColor: '#3085d6',
            timer: '1000'
        })
    },
    error: function (title, text) {
        swal({
            title: title,
            text: text,
            confirmButtonColor: '#d33',
            timer: '1000'
        })
    }
}

var REQUEST = {
    GET: function (REST_URL, $HTTP, successCallback, errorCallback) {
        $HTTP({
            method: 'GET',
            url: CONFIGURATION.getBase_url() + REST_URL
        }).then(function (response) {
            successCallback(response);
        }, function (response) {
            errorCallback(response)
        });
    },
    POST: function (REST_URL, DATA, $HTTP, successCallback, errorCallback) {
        $HTTP({
            method: 'POST',
            url: CONFIGURATION.getBase_url() + REST_URL
        }).then(function (data) {
            successCallback(data)
        }, function (data) {
            errorCallback(data)
        })
    },
    PUT: function (REST_URL, DATA, $HTTP, successCallback, errorCallback) {
        $HTTP({
            method: 'PUT',
            url: CONFIGURATION.getBase_url() + REST_URL,
            data: JSON.stringify(DATA)
        }).then(function (data) {
            successCallback(data)
        }, function (data) {
            errorCallback(data)
        })

    },
    DELETE: function (REST_URL, $HTTP, successCallback, errorCallback) {
        $HTTP({
            method: 'DELETE',
            url: CONFIGURATION.getBase_url() + REST_URL
        }).then(function (data) {
            successCallback(data);
        }, function (data) {
            errorCallback(data)
        });
    },
    ERROR: function (data) {
        if(data.status==400){
            DIALOG.error("Error","Page error.")
        }else if(data.status==500){
            DIALOG.error("Error","Server error.")
        }else if(data.status==401){
            DIALOG.error("Error","Page not found.")
        }
    }
}