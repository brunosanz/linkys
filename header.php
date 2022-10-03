<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="img/favicons/favicon.svg" />
    <title><?php echo SITE_NAME.' | '.SITE_DESCRIPTION; ?></title>
    <meta name="theme-color" content="#f8f9fa">
    <style>
      body {
        padding-top: 2rem;
        background: #f8f9fa;
        background-image: url('<?php echo BACKGROUND_IMAGE; ?>');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
        background-size: cover;
      }
      .chip {
          float: right;
          position: absolute;
          top: 10px;
          right: 10px;
          display: flex;
      }
      .recomended{
        float: left;
      }
      .avatar{
        border-radius: 50%;
        border: 2px solid #0d6efd;
      }
      .img-rounded{
        border-radius: 12px;
      }
      .user-name {
          margin-left: 44px;
          font-size: 14px;
          font-weight: 500;
      }
      .date {
          margin-left: 44px;
          font-size: 12px;
          color: #8e8e93;
      }

    </style>
  </head>
  <body>