import forms from "@tailwindcss/forms";
import flowbitePlugin from "flowbite/plugin";

/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php",
        "./storage/framework/views/*.php",
        "./resources/views/**/*.blade.php",
        "./resources/js/**/*.js",
        "./node_modules/flowbite/**/*.js",
        // './node_modules/swiper/swiper-bundle.min.css', ❌ REMOVE THIS
    ],

    theme: {
        extend: {
            fontFamily: {
                sans: ['"Helvetica Neue"', "Helvetica", "Arial", "sans-serif"],
            },
            colors: {
                primary: "#F8B26A",
                secondary: "#81562A",
            },
        },
    },

    plugins: [forms, flowbitePlugin],
};
