$(function () {
    var section_tabs = $('#tabs');
    section_tabs.parent().hide();

    if (window.sessionStorage.getItem('session_started') != 'y') {
        $('#btn-login').click(function () {
            var registrationNumber = $('#registration_number').val();
            var password = $('#password_').val();
            $.ajax({
                url: '/ajax/save_login/' + registrationNumber + '/' + password,
                type: "post",
                dataType: 'json',
                success: function (result) {
                    if (result.session_started) {
                        alert("Haz iniciado sesión");
                        $('#init-session').hide();
                        section_tabs.parent().show();
                        section_tabs.tabs();
                        window.sessionStorage.setItem('session_started', 'y');
                    }
                    else
                        alert("La Matrícula y/o Contraseña no coinciden");

                }
            });
        });
    } else if (window.sessionStorage.getItem('session_started') == 'y') {
        $('#init-session').hide();
        section_tabs.parent().show();
        section_tabs.tabs();
    }

    $('#add-new-student').submit(function () {
        var student = getVarStudent();
        $.ajax({
            url: '/ajax/students/',
            type: "POST",
            dataType: 'json',
            data: $.param({student}),
            success: function (result) {
                alert(result.msg);
            }
        });
    });
    $('#tabs, #new-student').tabs({
        select: function (event, ui) {
            var tabNumber = ui.index;
            var tabName = $(ui.tab).text();
            $('#student-data').hide();
            alert('hola');
        }
    });
});

function getVarStudent() {
    return {
        registration_number: $('#update-registration-number').val(),
        name: $('#update-name').val(),
        first_last_name: $('#update-first-last-name').val(),
        second_last_name: $('#update-second-last-name').val(),
        age: $('#update-age').val(),
        street: $('#update-street').val(),
        crossings: $('#update-crossings').val(),
        number: $('#update-number').val(),
        suburb: $('#update-suburb').val(),
        postal_code: $('#update-postal-code').val(),
        latitude: $('#update-latitude').val(),
        altitude: $('#update-altitude').val(),
        password: $('#update-password').val()
    };
}

function updateStudentForm() {
    var student_id = $('#student-form-id').val();
    var student = getVarStudent();

    if (student_id > 0) {
        $.ajax({
            url: '/ajax/students/' + student_id,
            type: "PATCH",
            dataType: 'json',
            data: $.param({student}),
            success: function (result) {
                alert(result.msg);
            }
        });
    } else {
        alert('Escriba un ID.');
    }
}


function searchStudent() {
    var studentId = $('#student-id').val();
    if (studentId > 0) {

        $.ajax({
            url: '/ajax/students/' + studentId,
            type: "get",
            dataType: 'json',
            success: function (result) {
                if (result.student != null) {
                    $('#student-data').show();
                    $('#student-registration-number').text(result.student.registration_number);
                    $('#student-name').text(result.student.name);
                    $('#student-first-last-name').text(result.student.first_last_name);
                    $('#student-second-last-name').text(result.student.second_last_name);
                    $('#student-age').text(result.student.age);
                    $('#student-street').text(result.student.street);
                    $('#student-crossings').text(result.student.crossings);
                    $('#student-number').text(result.student.number);
                    $('#student-suburb').text(result.student.suburb);
                    $('#student-postal-code').text(result.student.postal_code);
                }
                else {
                    alert("No existe ese estudiante");
                }
            }
        });
    } else {
        alert("Escriba un ID");
    }

}

function deleteStudent() {
    var studentId = $('#student-delete-id').val();
    if (studentId > 0) {
        $.ajax({
            url: '/ajax/students/' + studentId,
            type: "delete",
            dataType: 'json',
            success: function (result) {
                alert(result.msg);
            }
        });
    } else {
        alert("Escriba un ID");
    }
}