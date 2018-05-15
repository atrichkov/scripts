/*
    Simple function for prevent content selection and copy with right click or (F12) debug tools
*/

function disableCopy() {
    jQuery(document).ready(function () {
        document.addEventListener('contextmenu', event => event.preventDefault()); // prevent right click
        document.onselectstart = new Function('return false;'); // disable text selection
        document.onkeypress = function (event) {
            event = (event || window.event);
            if (event.keyCode == 123) {
                return false;
            } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73 ||
                    event.ctrlKey && event.keyCode == 85) {
                return false;
            }
        }
        document.onkeydown = function (event) {
            event = (event || window.event);
            if (event.keyCode == 123) {
                return false;
            } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73 ||
                    event.ctrlKey && event.keyCode == 85) {
                return false;
            }
        }
    });
}