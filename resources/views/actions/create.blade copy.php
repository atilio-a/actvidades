@extends('layouts.admin2')


<head>
    <title>Laravel 10 with Select2 - Websolutionstuff</title>

    <!-- Include Select2 CSS CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />

    <!-- Include jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Include Select2 JS CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@x.x.x/dist/select2-bootstrap4.min.css">

</head>
<body>
    <style>
        .wrapper-content{
  display: block;
    width: 200px;
    margin: 0 auto;
    padding: 50px 150px;
    border: 3px solid #48c9b0;
    font-family: Roboto, Helvetica;
}
.title{
    display: block;
    padding-top: 5px;
    font-size: 17px;
    font-weight: 700;
    color: rgba(52, 73, 94, .3);
    letter-spacing: 0;
    font-size: 18px;
    line-height: 1.72222;
}

/********************
Select2 Override style
*********************/


/* Assign min-width to container */
.select2-container{
    min-width:200px;
    font-family: Roboto, Helvetica;
}
/*********************************
Author : Techhysahil
Link : http://techhysahil.com
*********************************/

$flat-theme-light-color : #48c9b0;
$flat-theme-dark-color : #16a085;

.select2-container--open .select2-dropdown--below,
.select2-container--open .select2-dropdown--above{
  background: $flat-theme-light-color;
}
.select2-container--flat{
  .select2-container--focus .select2-selection--multiple{
    border: 1px solid $flat-theme-dark-color;
  }
  .select2-results__option--highlighted[aria-selected]{
    background: $flat-theme-dark-color !important;
    color: #ffffff;
  }
  .select2-results__option[aria-selected=true]{
    background: $flat-theme-dark-color;
    color: #fff;
    opacity: 0.8;
  }
  .select2-selection--single{
    border-radius:0px;
  }
  &.select2-container--open{
    .select2-selection__arrow{
      b{
        transform: rotate(180deg);
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
      }
    }
  }
  span.select2-search{
    input {
      height: 30px !important;
    }
  }
}

.select2-container{
  .select2-choice {
    border: 2px solid #dce4ec;
    height: 36px;
    border-radius: 0px ;
    font-family: "Lato", sans-serif;
    font-size: 14px;
    text-indent: 1px;
    box-shadow: none;
    background-image: none;
    div {
      border-left: 2px solid #dce4ec;
      border-radius: 0 4px 4px 0;
      background-clip: padding-box;
    }
    .select2-arrow{
      border: 0px;
      border-radius: 0px;
      background: transparent;
      background-image: none;
    }
  }
  *:focus{
    outline:0px;
  }
  &.select2-drop-above .select2-choice {
    border-bottom-color: #dce4ec;
    border-radius:0px;
  }
}

.select2-drop {
  margin-top: -2px;
  border: 2px solid #dce4ec;
  border-top: 0;
  border-radius: 0px !important;
  border-radius:0 0 6px 6px;
  box-shadow: none;
  &.select2-drop-above {
    margin-top: 2px;
    border-top: 2px solid #dce4ec;
    border-bottom: 0;
    border-radius: 6px 6px 0 0;
    box-shadow: none;
  }
}

.select2-search{
  margin-top: 3px;
  input {
    height: 26px;
    border: 2px solid #dce4ec;
  }
}

.select2-container-active .select2-choice,
.select2-container-active .select2-choices {
  border: 2px solid #dce4ec;
  outline: none;
  box-shadow: none;
}

.select2-dropdown-open .select2-choice {
  box-shadow: none;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
  .select2-choice div {
    background: transparent;
    border-left: none;
    filter: none;
  }
}

.select2-results{
  padding: 0 0 0 0px;
  margin: 4px 0px 0px 0;
  .select2-highlighted {
    background: $flat-theme-dark-color;
    color: #fff;
    border-radius: 0px;
  }
}

.select2-container-multi{
  .select2-choices {
    height: auto !important;
    height: 1%;

    border: 2px solid #dce4ec;
  }
  &.select2-container-active .select2-choices {
    border: 2px solid #dce4ec;
    border-radius: 6px;
    box-shadow: none;
  }
}

/****** Single SCSS *******/
.select2-container--flat{
  .select2-selection--single{
    background: $flat-theme-light-color;
    border: 0px;
    height:34px;
    .select2-selection__rendered{
      color: #fff;
      line-height:34px;
    }
    .select2-selection__arrow{
      height: 26px;
      position: absolute;
      top: 1px;
      right: 1px;
      width: 20px;
      b {
        border-color: #fff transparent transparent transparent;
        top: 60%;
        border-style: solid;
        border-width: 5px 4px 0 4px;
        height: 0;
        left: 50%;
        margin-left: -4px;
        margin-top: -2px;
        position: absolute;
        width: 0;
      }
    }
    .select2-selection__placeholder {
      color: #fff;
    }
    .select2-selection__arrow b {

    }
    .select2-selection__clear {
      cursor: pointer;
      float: right;
      font-weight: bold;
    }
  }
}

/****** Multiple SCSS *******/
.select2-container--flat{
  .select2-selection--multiple{
    border: 1px solid $flat-theme-dark-color;
    .select2-selection__choice__remove:hover{
      color: $flat-theme-dark-color;
      cursor: pointer;
    }
    .select2-selection__rendered {
      box-sizing: border-box;
      list-style: none;
      margin: 0;
      padding: 0 5px;
      width: 100%;
    }
    .select2-selection__choice{
      background-color: $flat-theme-light-color;
      color: #fff;
      border: 1px solid $flat-theme-light-color;
      border-radius: 0px;
      padding: 3px 5px;
      cursor: default;
      float: left;
      margin-right: 5px;
      margin-top: 5px;
    }
    .select2-selection__choice__remove{
      color: $flat-theme-dark-color;
      margin-right: 6px;
      margin-left: 6px;
      float: right;
    }
  }
}



    </style>
<select class="form-control js-example-responsive" multiple="multiple" style="width: 85%">



    <option value="option1">Option 1</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
    <option value="option11">Option 11</option>
    <option value="option21">Option 21</option>
    <option value="option31">Option 31</option>
</select>

<script>
    $(document).ready(function() {
        // Initialize Select2
        $('select').select2({
    theme: 'bootstrap4',
});
        $(".js-example-responsive").select2({
            theme: 'bootstrap4',
    width: 'resolve' // need to override the changed default
});
    });
</script>

</body>
</html>