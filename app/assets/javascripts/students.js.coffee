$(document).on "page:change", -> 
        $('.status').hover (event) -> 
                $(this).toggleClass("hover")