<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
 <meta charset="utf-8">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>



<style type="text/css">

body {
  background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
  overflow-x: hidden;
  overflow-y: auto;
  filter: drop-shadow(0 0 10px white);
}

.snow {
  position: absolute;
  width: 10px;
  height: 10px;
  background: white;
  border-radius: 50%;
}
.snow:nth-child(1) {
  opacity: 0.3761;
  transform: translate(57.3508vw, -10px) scale(0.4943);
  animation: fall-1 17s -13s linear infinite;
}
@keyframes fall-1 {
  78.245% {
    transform: translate(59.7598vw, 78.245vh) scale(0.4943);
  }
  to {
    transform: translate(58.5553vw, 100vh) scale(0.4943);
  }
}
.snow:nth-child(2) {
  opacity: 0.2728;
  transform: translate(64.9679vw, -10px) scale(0.3051);
  animation: fall-2 19s -12s linear infinite;
}
@keyframes fall-2 {
  45.81% {
    transform: translate(59.4212vw, 45.81vh) scale(0.3051);
  }
  to {
    transform: translate(62.19455vw, 100vh) scale(0.3051);
  }
}
.snow:nth-child(3) {
  opacity: 0.6729;
  transform: translate(39.8071vw, -10px) scale(0.8408);
  animation: fall-3 14s -1s linear infinite;
}
@keyframes fall-3 {
  56.635% {
    transform: translate(43.5236vw, 56.635vh) scale(0.8408);
  }
  to {
    transform: translate(41.66535vw, 100vh) scale(0.8408);
  }
}
.snow:nth-child(4) {
  opacity: 0.4304;
  transform: translate(80.1731vw, -10px) scale(0.4797);
  animation: fall-4 28s -17s linear infinite;
}
@keyframes fall-4 {
  49.931% {
    transform: translate(71.4349vw, 49.931vh) scale(0.4797);
  }
  to {
    transform: translate(75.804vw, 100vh) scale(0.4797);
  }
}
.snow:nth-child(5) {
  opacity: 0.2558;
  transform: translate(34.4139vw, -10px) scale(0.3036);
  animation: fall-5 14s -7s linear infinite;
}
@keyframes fall-5 {
  42.44% {
    transform: translate(37.3562vw, 42.44vh) scale(0.3036);
  }
  to {
    transform: translate(35.88505vw, 100vh) scale(0.3036);
  }
}
.snow:nth-child(6) {
  opacity: 0.0058;
  transform: translate(74.709vw, -10px) scale(0.3447);
  animation: fall-6 22s -19s linear infinite;
}
@keyframes fall-6 {
  53.857% {
    transform: translate(81.1207vw, 53.857vh) scale(0.3447);
  }
  to {
    transform: translate(77.91485vw, 100vh) scale(0.3447);
  }
}
.snow:nth-child(7) {
  opacity: 0.5025;
  transform: translate(3.7651vw, -10px) scale(0.7082);
  animation: fall-7 11s -30s linear infinite;
}
@keyframes fall-7 {
  53.808% {
    transform: translate(8.1336vw, 53.808vh) scale(0.7082);
  }
  to {
    transform: translate(5.94935vw, 100vh) scale(0.7082);
  }
}
.snow:nth-child(8) {
  opacity: 0.6208;
  transform: translate(14.03vw, -10px) scale(0.7696);
  animation: fall-8 19s -11s linear infinite;
}
@keyframes fall-8 {
  36.264% {
    transform: translate(4.0995vw, 36.264vh) scale(0.7696);
  }
  to {
    transform: translate(9.06475vw, 100vh) scale(0.7696);
  }
}
.snow:nth-child(9) {
  opacity: 0.703;
  transform: translate(3.3484vw, -10px) scale(0.6433);
  animation: fall-9 16s -18s linear infinite;
}
@keyframes fall-9 {
  50.868% {
    transform: translate(2.7305vw, 50.868vh) scale(0.6433);
  }
  to {
    transform: translate(3.03945vw, 100vh) scale(0.6433);
  }
}
.snow:nth-child(10) {
  opacity: 0.2335;
  transform: translate(63.2417vw, -10px) scale(0.6059);
  animation: fall-10 13s -10s linear infinite;
}
@keyframes fall-10 {
  44.64% {
    transform: translate(67.6417vw, 44.64vh) scale(0.6059);
  }
  to {
    transform: translate(65.4417vw, 100vh) scale(0.6059);
  }
}
.snow:nth-child(11) {
  opacity: 0.7325;
  transform: translate(13.4679vw, -10px) scale(0.4494);
  animation: fall-11 12s -7s linear infinite;
}
@keyframes fall-11 {
  34.709% {
    transform: translate(7.9605vw, 34.709vh) scale(0.4494);
  }
  to {
    transform: translate(10.7142vw, 100vh) scale(0.4494);
  }
}
.snow:nth-child(12) {
  opacity: 0.5154;
  transform: translate(46.0016vw, -10px) scale(0.9146);
  animation: fall-12 19s -12s linear infinite;
}
@keyframes fall-12 {
  75.56% {
    transform: translate(53.7809vw, 75.56vh) scale(0.9146);
  }
  to {
    transform: translate(49.89125vw, 100vh) scale(0.9146);
  }
}
.snow:nth-child(13) {
  opacity: 0.7149;
  transform: translate(9.5049vw, -10px) scale(0.765);
  animation: fall-13 10s -28s linear infinite;
}
@keyframes fall-13 {
  46.077% {
    transform: translate(8.6813vw, 46.077vh) scale(0.765);
  }
  to {
    transform: translate(9.0931vw, 100vh) scale(0.765);
  }
}
.snow:nth-child(14) {
  opacity: 0.6483;
  transform: translate(7.9166vw, -10px) scale(0.7729);
  animation: fall-14 26s -2s linear infinite;
}
@keyframes fall-14 {
  51.123% {
    transform: translate(13.6503vw, 51.123vh) scale(0.7729);
  }
  to {
    transform: translate(10.78345vw, 100vh) scale(0.7729);
  }
}
.snow:nth-child(15) {
  opacity: 0.6615;
  transform: translate(15.5934vw, -10px) scale(0.841);
  animation: fall-15 12s -4s linear infinite;
}
@keyframes fall-15 {
  51.919% {
    transform: translate(13.1815vw, 51.919vh) scale(0.841);
  }
  to {
    transform: translate(14.38745vw, 100vh) scale(0.841);
  }
}
.snow:nth-child(16) {
  opacity: 0.0703;
  transform: translate(19.4226vw, -10px) scale(0.1165);
  animation: fall-16 20s -1s linear infinite;
}
@keyframes fall-16 {
  36.59% {
    transform: translate(17.569vw, 36.59vh) scale(0.1165);
  }
  to {
    transform: translate(18.4958vw, 100vh) scale(0.1165);
  }
}
.snow:nth-child(17) {
  opacity: 0.4013;
  transform: translate(72.7325vw, -10px) scale(0.2903);
  animation: fall-17 12s -28s linear infinite;
}
@keyframes fall-17 {
  71.204% {
    transform: translate(63.9921vw, 71.204vh) scale(0.2903);
  }
  to {
    transform: translate(68.3623vw, 100vh) scale(0.2903);
  }
}
.snow:nth-child(18) {
  opacity: 0.8681;
  transform: translate(31.6817vw, -10px) scale(0.0706);
  animation: fall-18 25s -10s linear infinite;
}
@keyframes fall-18 {
  44.853% {
    transform: translate(22.3698vw, 44.853vh) scale(0.0706);
  }
  to {
    transform: translate(27.02575vw, 100vh) scale(0.0706);
  }
}
.snow:nth-child(19) {
  opacity: 0.6958;
  transform: translate(61.5882vw, -10px) scale(0.1722);
  animation: fall-19 27s -15s linear infinite;
}
@keyframes fall-19 {
  44.936% {
    transform: translate(64.9637vw, 44.936vh) scale(0.1722);
  }
  to {
    transform: translate(63.27595vw, 100vh) scale(0.1722);
  }
}
.snow:nth-child(20) {
  opacity: 0.5834;
  transform: translate(30.1875vw, -10px) scale(0.2217);
  animation: fall-20 23s -28s linear infinite;
}
@keyframes fall-20 {
  41.581% {
    transform: translate(30.3056vw, 41.581vh) scale(0.2217);
  }
  to {
    transform: translate(30.24655vw, 100vh) scale(0.2217);
  }
}
.snow:nth-child(21) {
  opacity: 0.2093;
  transform: translate(13.6809vw, -10px) scale(0.389);
  animation: fall-21 12s -1s linear infinite;
}
@keyframes fall-21 {
  77.443% {
    transform: translate(8.3421vw, 77.443vh) scale(0.389);
  }
  to {
    transform: translate(11.0115vw, 100vh) scale(0.389);
  }
}
.snow:nth-child(22) {
  opacity: 0.0286;
  transform: translate(19.487vw, -10px) scale(0.2918);
  animation: fall-22 16s -11s linear infinite;
}
@keyframes fall-22 {
  33.775% {
    transform: translate(20.2606vw, 33.775vh) scale(0.2918);
  }
  to {
    transform: translate(19.8738vw, 100vh) scale(0.2918);
  }
}
.snow:nth-child(23) {
  opacity: 0.1054;
  transform: translate(75.1515vw, -10px) scale(0.2752);
  animation: fall-23 26s -24s linear infinite;
}
@keyframes fall-23 {
  75.831% {
    transform: translate(81.8517vw, 75.831vh) scale(0.2752);
  }
  to {
    transform: translate(78.5016vw, 100vh) scale(0.2752);
  }
}
.snow:nth-child(24) {
  opacity: 0.3026;
  transform: translate(38.0917vw, -10px) scale(0.2393);
  animation: fall-24 10s -9s linear infinite;
}
@keyframes fall-24 {
  55.408% {
    transform: translate(30.2357vw, 55.408vh) scale(0.2393);
  }
  to {
    transform: translate(34.1637vw, 100vh) scale(0.2393);
  }
}
.snow:nth-child(25) {
  opacity: 0.6876;
  transform: translate(87.8997vw, -10px) scale(0.3664);
  animation: fall-25 12s -11s linear infinite;
}
@keyframes fall-25 {
  63.478% {
    transform: translate(86.3399vw, 63.478vh) scale(0.3664);
  }
  to {
    transform: translate(87.1198vw, 100vh) scale(0.3664);
  }
}
.snow:nth-child(26) {
  opacity: 0.4653;
  transform: translate(33.5677vw, -10px) scale(0.6924);
  animation: fall-26 29s -28s linear infinite;
}
@keyframes fall-26 {
  62.018% {
    transform: translate(26.7795vw, 62.018vh) scale(0.6924);
  }
  to {
    transform: translate(30.1736vw, 100vh) scale(0.6924);
  }
}
.snow:nth-child(27) {
  opacity: 0.4498;
  transform: translate(89.3864vw, -10px) scale(0.8458);
  animation: fall-27 30s -2s linear infinite;
}
@keyframes fall-27 {
  45.083% {
    transform: translate(89.6352vw, 45.083vh) scale(0.8458);
  }
  to {
    transform: translate(89.5108vw, 100vh) scale(0.8458);
  }
}
.snow:nth-child(28) {
  opacity: 0.9674;
  transform: translate(41.1076vw, -10px) scale(0.368);
  animation: fall-28 17s -17s linear infinite;
}
@keyframes fall-28 {
  61.84% {
    transform: translate(31.7517vw, 61.84vh) scale(0.368);
  }
  to {
    transform: translate(36.42965vw, 100vh) scale(0.368);
  }
}
.snow:nth-child(29) {
  opacity: 0.5956;
  transform: translate(31.3383vw, -10px) scale(0.3329);
  animation: fall-29 20s -10s linear infinite;
}
@keyframes fall-29 {
  46.142% {
    transform: translate(32.9392vw, 46.142vh) scale(0.3329);
  }
  to {
    transform: translate(32.13875vw, 100vh) scale(0.3329);
  }
}
.snow:nth-child(30) {
  opacity: 0.5882;
  transform: translate(13.4236vw, -10px) scale(0.1298);
  animation: fall-30 19s -29s linear infinite;
}
@keyframes fall-30 {
  37.035% {
    transform: translate(12.2693vw, 37.035vh) scale(0.1298);
  }
  to {
    transform: translate(12.84645vw, 100vh) scale(0.1298);
  }
}
.snow:nth-child(31) {
  opacity: 0.2837;
  transform: translate(33.2448vw, -10px) scale(0.5863);
  animation: fall-31 23s -16s linear infinite;
}
@keyframes fall-31 {
  76.182% {
    transform: translate(32.9736vw, 76.182vh) scale(0.5863);
  }
  to {
    transform: translate(33.1092vw, 100vh) scale(0.5863);
  }
}
.snow:nth-child(32) {
  opacity: 0.2352;
  transform: translate(15.6887vw, -10px) scale(0.2675);
  animation: fall-32 27s -2s linear infinite;
}
@keyframes fall-32 {
  59.127% {
    transform: translate(9.4183vw, 59.127vh) scale(0.2675);
  }
  to {
    transform: translate(12.5535vw, 100vh) scale(0.2675);
  }
}
.snow:nth-child(33) {
  opacity: 0.3999;
  transform: translate(51.6637vw, -10px) scale(0.4253);
  animation: fall-33 22s -3s linear infinite;
}
@keyframes fall-33 {
  65.61% {
    transform: translate(47.1614vw, 65.61vh) scale(0.4253);
  }
  to {
    transform: translate(49.41255vw, 100vh) scale(0.4253);
  }
}
.snow:nth-child(34) {
  opacity: 0.9241;
  transform: translate(11.2814vw, -10px) scale(0.6536);
  animation: fall-34 14s -18s linear infinite;
}
@keyframes fall-34 {
  52.867% {
    transform: translate(8.8114vw, 52.867vh) scale(0.6536);
  }
  to {
    transform: translate(10.0464vw, 100vh) scale(0.6536);
  }
}
.snow:nth-child(35) {
  opacity: 0.3165;
  transform: translate(42.4626vw, -10px) scale(0.7988);
  animation: fall-35 10s -11s linear infinite;
}
@keyframes fall-35 {
  45.84% {
    transform: translate(39.0427vw, 45.84vh) scale(0.7988);
  }
  to {
    transform: translate(40.75265vw, 100vh) scale(0.7988);
  }
}
.snow:nth-child(36) {
  opacity: 0.8016;
  transform: translate(25.7601vw, -10px) scale(0.4784);
  animation: fall-36 23s -25s linear infinite;
}
@keyframes fall-36 {
  50.196% {
    transform: translate(19.5678vw, 50.196vh) scale(0.4784);
  }
  to {
    transform: translate(22.66395vw, 100vh) scale(0.4784);
  }
}
.snow:nth-child(37) {
  opacity: 0.6212;
  transform: translate(11.5545vw, -10px) scale(0.3727);
  animation: fall-37 24s -5s linear infinite;
}
@keyframes fall-37 {
  69.715% {
    transform: translate(21.2069vw, 69.715vh) scale(0.3727);
  }
  to {
    transform: translate(16.3807vw, 100vh) scale(0.3727);
  }
}
.snow:nth-child(38) {
  opacity: 0.4944;
  transform: translate(30.0421vw, -10px) scale(0.738);
  animation: fall-38 18s -21s linear infinite;
}
@keyframes fall-38 {
  68.336% {
    transform: translate(35.3884vw, 68.336vh) scale(0.738);
  }
  to {
    transform: translate(32.71525vw, 100vh) scale(0.738);
  }
}
.snow:nth-child(39) {
  opacity: 0.4902;
  transform: translate(4.7871vw, -10px) scale(0.1301);
  animation: fall-39 15s -29s linear infinite;
}
@keyframes fall-39 {
  41.672% {
    transform: translate(8.8281vw, 41.672vh) scale(0.1301);
  }
  to {
    transform: translate(6.8076vw, 100vh) scale(0.1301);
  }
}
.snow:nth-child(40) {
  opacity: 0.2434;
  transform: translate(68.4166vw, -10px) scale(0.5166);
  animation: fall-40 12s -25s linear infinite;
}
@keyframes fall-40 {
  40.015% {
    transform: translate(75.8935vw, 40.015vh) scale(0.5166);
  }
  to {
    transform: translate(72.15505vw, 100vh) scale(0.5166);
  }
}
.snow:nth-child(41) {
  opacity: 0.9943;
  transform: translate(16.0063vw, -10px) scale(0.924);
  animation: fall-41 28s -11s linear infinite;
}
@keyframes fall-41 {
  37.845% {
    transform: translate(21.4912vw, 37.845vh) scale(0.924);
  }
  to {
    transform: translate(18.74875vw, 100vh) scale(0.924);
  }
}
.snow:nth-child(42) {
  opacity: 0.6329;
  transform: translate(85.3156vw, -10px) scale(0.9564);
  animation: fall-42 15s -8s linear infinite;
}
@keyframes fall-42 {
  32.827% {
    transform: translate(81.1702vw, 32.827vh) scale(0.9564);
  }
  to {
    transform: translate(83.2429vw, 100vh) scale(0.9564);
  }
}
.snow:nth-child(43) {
  opacity: 0.1313;
  transform: translate(13.8534vw, -10px) scale(0.4157);
  animation: fall-43 28s -15s linear infinite;
}
@keyframes fall-43 {
  37.806% {
    transform: translate(9.4476vw, 37.806vh) scale(0.4157);
  }
  to {
    transform: translate(11.6505vw, 100vh) scale(0.4157);
  }
}
.snow:nth-child(44) {
  opacity: 0.1649;
  transform: translate(61.2391vw, -10px) scale(0.0987);
  animation: fall-44 27s -1s linear infinite;
}
@keyframes fall-44 {
  69.448% {
    transform: translate(66.49vw, 69.448vh) scale(0.0987);
  }
  to {
    transform: translate(63.86455vw, 100vh) scale(0.0987);
  }
}
.snow:nth-child(45) {
  opacity: 0.5172;
  transform: translate(81.7695vw, -10px) scale(0.619);
  animation: fall-45 26s -16s linear infinite;
}
@keyframes fall-45 {
  45.439% {
    transform: translate(81.9041vw, 45.439vh) scale(0.619);
  }
  to {
    transform: translate(81.8368vw, 100vh) scale(0.619);
  }
}
.snow:nth-child(46) {
  opacity: 0.8847;
  transform: translate(37.3981vw, -10px) scale(0.2123);
  animation: fall-46 26s -23s linear infinite;
}
@keyframes fall-46 {
  66.77% {
    transform: translate(46.0953vw, 66.77vh) scale(0.2123);
  }
  to {
    transform: translate(41.7467vw, 100vh) scale(0.2123);
  }
}
.snow:nth-child(47) {
  opacity: 0.0746;
  transform: translate(85.1176vw, -10px) scale(0.9285);
  animation: fall-47 28s -27s linear infinite;
}
@keyframes fall-47 {
  48.706% {
    transform: translate(84.3022vw, 48.706vh) scale(0.9285);
  }
  to {
    transform: translate(84.7099vw, 100vh) scale(0.9285);
  }
}
.snow:nth-child(48) {
  opacity: 0.5081;
  transform: translate(84.0665vw, -10px) scale(0.8691);
  animation: fall-48 15s -1s linear infinite;
}
@keyframes fall-48 {
  32.182% {
    transform: translate(80.7437vw, 32.182vh) scale(0.8691);
  }
  to {
    transform: translate(82.4051vw, 100vh) scale(0.8691);
  }
}
.snow:nth-child(49) {
  opacity: 0.6274;
  transform: translate(37.9716vw, -10px) scale(0.7964);
  animation: fall-49 14s -26s linear infinite;
}
@keyframes fall-49 {
  79.154% {
    transform: translate(32.271vw, 79.154vh) scale(0.7964);
  }
  to {
    transform: translate(35.1213vw, 100vh) scale(0.7964);
  }
}
.snow:nth-child(50) {
  opacity: 0.9897;
  transform: translate(32.9678vw, -10px) scale(0.6144);
  animation: fall-50 15s -14s linear infinite;
}
@keyframes fall-50 {
  63.506% {
    transform: translate(36.8363vw, 63.506vh) scale(0.6144);
  }
  to {
    transform: translate(34.90205vw, 100vh) scale(0.6144);
  }
}
.snow:nth-child(51) {
  opacity: 0.6609;
  transform: translate(26.9258vw, -10px) scale(0.0428);
  animation: fall-51 25s -11s linear infinite;
}
@keyframes fall-51 {
  33.889% {
    transform: translate(22.2121vw, 33.889vh) scale(0.0428);
  }
  to {
    transform: translate(24.56895vw, 100vh) scale(0.0428);
  }
}
.snow:nth-child(52) {
  opacity: 0.945;
  transform: translate(70.4846vw, -10px) scale(0.7909);
  animation: fall-52 19s -16s linear infinite;
}
@keyframes fall-52 {
  40.543% {
    transform: translate(71.1014vw, 40.543vh) scale(0.7909);
  }
  to {
    transform: translate(70.793vw, 100vh) scale(0.7909);
  }
}
.snow:nth-child(53) {
  opacity: 0.2911;
  transform: translate(96.9519vw, -10px) scale(0.7251);
  animation: fall-53 24s -4s linear infinite;
}
@keyframes fall-53 {
  44.564% {
    transform: translate(87.2621vw, 44.564vh) scale(0.7251);
  }
  to {
    transform: translate(92.107vw, 100vh) scale(0.7251);
  }
}
.snow:nth-child(54) {
  opacity: 0.4397;
  transform: translate(90.9441vw, -10px) scale(0.8268);
  animation: fall-54 16s -3s linear infinite;
}
@keyframes fall-54 {
  64.433% {
    transform: translate(84.9572vw, 64.433vh) scale(0.8268);
  }
  to {
    transform: translate(87.95065vw, 100vh) scale(0.8268);
  }
}
.snow:nth-child(55) {
  opacity: 0.549;
  transform: translate(32.4172vw, -10px) scale(0.5474);
  animation: fall-55 23s -27s linear infinite;
}
@keyframes fall-55 {
  42.323% {
    transform: translate(23.9381vw, 42.323vh) scale(0.5474);
  }
  to {
    transform: translate(28.17765vw, 100vh) scale(0.5474);
  }
}
.snow:nth-child(56) {
  opacity: 0.9905;
  transform: translate(82.6609vw, -10px) scale(0.8886);
  animation: fall-56 25s -9s linear infinite;
}
@keyframes fall-56 {
  51.528% {
    transform: translate(75.1977vw, 51.528vh) scale(0.8886);
  }
  to {
    transform: translate(78.9293vw, 100vh) scale(0.8886);
  }
}
.snow:nth-child(57) {
  opacity: 0.006;
  transform: translate(13.3401vw, -10px) scale(0.2129);
  animation: fall-57 16s -19s linear infinite;
}
@keyframes fall-57 {
  45.07% {
    transform: translate(4.6843vw, 45.07vh) scale(0.2129);
  }
  to {
    transform: translate(9.0122vw, 100vh) scale(0.2129);
  }
}
.snow:nth-child(58) {
  opacity: 0.7621;
  transform: translate(93.7152vw, -10px) scale(0.6263);
  animation: fall-58 16s -22s linear infinite;
}
@keyframes fall-58 {
  43.154% {
    transform: translate(84.7272vw, 43.154vh) scale(0.6263);
  }
  to {
    transform: translate(89.2212vw, 100vh) scale(0.6263);
  }
}
.snow:nth-child(59) {
  opacity: 0.7955;
  transform: translate(3.0677vw, -10px) scale(0.7314);
  animation: fall-59 11s -22s linear infinite;
}
@keyframes fall-59 {
  64.87% {
    transform: translate(-2.9444vw, 64.87vh) scale(0.7314);
  }
  to {
    transform: translate(0.06165vw, 100vh) scale(0.7314);
  }
}
.snow:nth-child(60) {
  opacity: 0.0407;
  transform: translate(57.4769vw, -10px) scale(0.2608);
  animation: fall-60 21s -7s linear infinite;
}
@keyframes fall-60 {
  60.633% {
    transform: translate(65.1359vw, 60.633vh) scale(0.2608);
  }
  to {
    transform: translate(61.3064vw, 100vh) scale(0.2608);
  }
}
.snow:nth-child(61) {
  opacity: 0.8496;
  transform: translate(39.6086vw, -10px) scale(0.9682);
  animation: fall-61 28s -11s linear infinite;
}
@keyframes fall-61 {
  78.392% {
    transform: translate(34.011vw, 78.392vh) scale(0.9682);
  }
  to {
    transform: translate(36.8098vw, 100vh) scale(0.9682);
  }
}
.snow:nth-child(62) {
  opacity: 0.7418;
  transform: translate(31.1352vw, -10px) scale(0.7981);
  animation: fall-62 17s -19s linear infinite;
}
@keyframes fall-62 {
  34.942% {
    transform: translate(37.4654vw, 34.942vh) scale(0.7981);
  }
  to {
    transform: translate(34.3003vw, 100vh) scale(0.7981);
  }
}
.snow:nth-child(63) {
  opacity: 0.5655;
  transform: translate(47.2002vw, -10px) scale(0.305);
  animation: fall-63 23s -27s linear infinite;
}
@keyframes fall-63 {
  52.691% {
    transform: translate(43.9955vw, 52.691vh) scale(0.305);
  }
  to {
    transform: translate(45.59785vw, 100vh) scale(0.305);
  }
}
.snow:nth-child(64) {
  opacity: 0.4306;
  transform: translate(54.1375vw, -10px) scale(0.3497);
  animation: fall-64 15s -18s linear infinite;
}
@keyframes fall-64 {
  35.862% {
    transform: translate(44.4128vw, 35.862vh) scale(0.3497);
  }
  to {
    transform: translate(49.27515vw, 100vh) scale(0.3497);
  }
}
.snow:nth-child(65) {
  opacity: 0.1021;
  transform: translate(14.3403vw, -10px) scale(0.6686);
  animation: fall-65 15s -5s linear infinite;
}
@keyframes fall-65 {
  71.684% {
    transform: translate(13.48vw, 71.684vh) scale(0.6686);
  }
  to {
    transform: translate(13.91015vw, 100vh) scale(0.6686);
  }
}
.snow:nth-child(66) {
  opacity: 0.6966;
  transform: translate(94.1975vw, -10px) scale(0.2338);
  animation: fall-66 24s -12s linear infinite;
}
@keyframes fall-66 {
  58.958% {
    transform: translate(94.4874vw, 58.958vh) scale(0.2338);
  }
  to {
    transform: translate(94.34245vw, 100vh) scale(0.2338);
  }
}
.snow:nth-child(67) {
  opacity: 0.5468;
  transform: translate(90.866vw, -10px) scale(0.6085);
  animation: fall-67 23s -23s linear infinite;
}
@keyframes fall-67 {
  49.368% {
    transform: translate(87.7009vw, 49.368vh) scale(0.6085);
  }
  to {
    transform: translate(89.28345vw, 100vh) scale(0.6085);
  }
}
.snow:nth-child(68) {
  opacity: 0.5346;
  transform: translate(53.3095vw, -10px) scale(0.4214);
  animation: fall-68 20s -3s linear infinite;
}
@keyframes fall-68 {
  53.49% {
    transform: translate(61.0371vw, 53.49vh) scale(0.4214);
  }
  to {
    transform: translate(57.1733vw, 100vh) scale(0.4214);
  }
}
.snow:nth-child(69) {
  opacity: 0.3087;
  transform: translate(67.2393vw, -10px) scale(0.7947);
  animation: fall-69 12s -8s linear infinite;
}
@keyframes fall-69 {
  39.59% {
    transform: translate(60.6684vw, 39.59vh) scale(0.7947);
  }
  to {
    transform: translate(63.95385vw, 100vh) scale(0.7947);
  }
}
.snow:nth-child(70) {
  opacity: 0.3649;
  transform: translate(10.0583vw, -10px) scale(0.9339);
  animation: fall-70 14s -7s linear infinite;
}
@keyframes fall-70 {
  43.398% {
    transform: translate(15.9385vw, 43.398vh) scale(0.9339);
  }
  to {
    transform: translate(12.9984vw, 100vh) scale(0.9339);
  }
}
.snow:nth-child(71) {
  opacity: 0.5696;
  transform: translate(45.4032vw, -10px) scale(0.2855);
  animation: fall-71 25s -9s linear infinite;
}
@keyframes fall-71 {
  67.063% {
    transform: translate(48.8926vw, 67.063vh) scale(0.2855);
  }
  to {
    transform: translate(47.1479vw, 100vh) scale(0.2855);
  }
}
.snow:nth-child(72) {
  opacity: 0.8104;
  transform: translate(42.4456vw, -10px) scale(0.9001);
  animation: fall-72 24s -13s linear infinite;
}
@keyframes fall-72 {
  46.399% {
    transform: translate(39.2049vw, 46.399vh) scale(0.9001);
  }
  to {
    transform: translate(40.82525vw, 100vh) scale(0.9001);
  }
}
.snow:nth-child(73) {
  opacity: 0.3654;
  transform: translate(17.6537vw, -10px) scale(0.076);
  animation: fall-73 22s -17s linear infinite;
}
@keyframes fall-73 {
  61.127% {
    transform: translate(8.0047vw, 61.127vh) scale(0.076);
  }
  to {
    transform: translate(12.8292vw, 100vh) scale(0.076);
  }
}
.snow:nth-child(74) {
  opacity: 0.5143;
  transform: translate(91.9416vw, -10px) scale(0.5339);
  animation: fall-74 13s -11s linear infinite;
}
@keyframes fall-74 {
  74.583% {
    transform: translate(92.9427vw, 74.583vh) scale(0.5339);
  }
  to {
    transform: translate(92.44215vw, 100vh) scale(0.5339);
  }
}
.snow:nth-child(75) {
  opacity: 0.5032;
  transform: translate(27.4143vw, -10px) scale(0.3417);
  animation: fall-75 25s -3s linear infinite;
}
@keyframes fall-75 {
  76.206% {
    transform: translate(25.4546vw, 76.206vh) scale(0.3417);
  }
  to {
    transform: translate(26.43445vw, 100vh) scale(0.3417);
  }
}
.snow:nth-child(76) {
  opacity: 0.0877;
  transform: translate(92.8556vw, -10px) scale(0.363);
  animation: fall-76 25s -10s linear infinite;
}
@keyframes fall-76 {
  48.667% {
    transform: translate(88.5563vw, 48.667vh) scale(0.363);
  }
  to {
    transform: translate(90.70595vw, 100vh) scale(0.363);
  }
}
.snow:nth-child(77) {
  opacity: 0.2478;
  transform: translate(36.9547vw, -10px) scale(0.1168);
  animation: fall-77 17s -4s linear infinite;
}
@keyframes fall-77 {
  53.167% {
    transform: translate(44.4769vw, 53.167vh) scale(0.1168);
  }
  to {
    transform: translate(40.7158vw, 100vh) scale(0.1168);
  }
}
.snow:nth-child(78) {
  opacity: 0.3598;
  transform: translate(59.7243vw, -10px) scale(0.188);
  animation: fall-78 10s -20s linear infinite;
}
@keyframes fall-78 {
  38.998% {
    transform: translate(55.8399vw, 38.998vh) scale(0.188);
  }
  to {
    transform: translate(57.7821vw, 100vh) scale(0.188);
  }
}
.snow:nth-child(79) {
  opacity: 0.9493;
  transform: translate(16.4105vw, -10px) scale(0.4284);
  animation: fall-79 21s -14s linear infinite;
}
@keyframes fall-79 {
  78.246% {
    transform: translate(13.979vw, 78.246vh) scale(0.4284);
  }
  to {
    transform: translate(15.19475vw, 100vh) scale(0.4284);
  }
}
.snow:nth-child(80) {
  opacity: 0.0525;
  transform: translate(1.5782vw, -10px) scale(0.3205);
  animation: fall-80 11s -7s linear infinite;
}
@keyframes fall-80 {
  50.307% {
    transform: translate(-4.0273vw, 50.307vh) scale(0.3205);
  }
  to {
    transform: translate(-1.22455vw, 100vh) scale(0.3205);
  }
}
.snow:nth-child(81) {
  opacity: 0.4217;
  transform: translate(96.0886vw, -10px) scale(0.8577);
  animation: fall-81 27s -20s linear infinite;
}
@keyframes fall-81 {
  67.017% {
    transform: translate(105.2449vw, 67.017vh) scale(0.8577);
  }
  to {
    transform: translate(100.66675vw, 100vh) scale(0.8577);
  }
}
.snow:nth-child(82) {
  opacity: 0.8941;
  transform: translate(27.8699vw, -10px) scale(0.329);
  animation: fall-82 25s -2s linear infinite;
}
@keyframes fall-82 {
  73.616% {
    transform: translate(23.4711vw, 73.616vh) scale(0.329);
  }
  to {
    transform: translate(25.6705vw, 100vh) scale(0.329);
  }
}
.snow:nth-child(83) {
  opacity: 0.308;
  transform: translate(26.8633vw, -10px) scale(0.7583);
  animation: fall-83 22s -22s linear infinite;
}
@keyframes fall-83 {
  34.855% {
    transform: translate(29.3538vw, 34.855vh) scale(0.7583);
  }
  to {
    transform: translate(28.10855vw, 100vh) scale(0.7583);
  }
}
.snow:nth-child(84) {
  opacity: 0.509;
  transform: translate(29.2707vw, -10px) scale(0.6826);
  animation: fall-84 10s -27s linear infinite;
}
@keyframes fall-84 {
  70.622% {
    transform: translate(28.3435vw, 70.622vh) scale(0.6826);
  }
  to {
    transform: translate(28.8071vw, 100vh) scale(0.6826);
  }
}
.snow:nth-child(85) {
  opacity: 0.5768;
  transform: translate(71.994vw, -10px) scale(0.3419);
  animation: fall-85 19s -21s linear infinite;
}
@keyframes fall-85 {
  47.985% {
    transform: translate(62.7058vw, 47.985vh) scale(0.3419);
  }
  to {
    transform: translate(67.3499vw, 100vh) scale(0.3419);
  }
}
.snow:nth-child(86) {
  opacity: 0.8464;
  transform: translate(93.0076vw, -10px) scale(0.008);
  animation: fall-86 10s -15s linear infinite;
}
@keyframes fall-86 {
  74.622% {
    transform: translate(96.8102vw, 74.622vh) scale(0.008);
  }
  to {
    transform: translate(94.9089vw, 100vh) scale(0.008);
  }
}
.snow:nth-child(87) {
  opacity: 0.3445;
  transform: translate(59.107vw, -10px) scale(0.9111);
  animation: fall-87 10s -1s linear infinite;
}
@keyframes fall-87 {
  49.484% {
    transform: translate(67.365vw, 49.484vh) scale(0.9111);
  }
  to {
    transform: translate(63.236vw, 100vh) scale(0.9111);
  }
}
.snow:nth-child(88) {
  opacity: 0.2941;
  transform: translate(68.5959vw, -10px) scale(0.372);
  animation: fall-88 14s -29s linear infinite;
}
@keyframes fall-88 {
  78.212% {
    transform: translate(71.6327vw, 78.212vh) scale(0.372);
  }
  to {
    transform: translate(70.1143vw, 100vh) scale(0.372);
  }
}
.snow:nth-child(89) {
  opacity: 0.7745;
  transform: translate(23.2879vw, -10px) scale(0.1262);
  animation: fall-89 28s -1s linear infinite;
}
@keyframes fall-89 {
  30.899% {
    transform: translate(22.2262vw, 30.899vh) scale(0.1262);
  }
  to {
    transform: translate(22.75705vw, 100vh) scale(0.1262);
  }
}
.snow:nth-child(90) {
  opacity: 0.332;
  transform: translate(68.3294vw, -10px) scale(0.9116);
  animation: fall-90 10s -8s linear infinite;
}
@keyframes fall-90 {
  52.671% {
    transform: translate(64.6489vw, 52.671vh) scale(0.9116);
  }
  to {
    transform: translate(66.48915vw, 100vh) scale(0.9116);
  }
}
.snow:nth-child(91) {
  opacity: 0.4701;
  transform: translate(29.5535vw, -10px) scale(0.6194);
  animation: fall-91 18s -9s linear infinite;
}
@keyframes fall-91 {
  79.299% {
    transform: translate(35.5701vw, 79.299vh) scale(0.6194);
  }
  to {
    transform: translate(32.5618vw, 100vh) scale(0.6194);
  }
}
.snow:nth-child(92) {
  opacity: 0.3677;
  transform: translate(89.5637vw, -10px) scale(0.7044);
  animation: fall-92 26s -10s linear infinite;
}
@keyframes fall-92 {
  56.568% {
    transform: translate(88.1757vw, 56.568vh) scale(0.7044);
  }
  to {
    transform: translate(88.8697vw, 100vh) scale(0.7044);
  }
}
.snow:nth-child(93) {
  opacity: 0.6646;
  transform: translate(77.0094vw, -10px) scale(0.3271);
  animation: fall-93 27s -23s linear infinite;
}
@keyframes fall-93 {
  63.97% {
    transform: translate(67.5553vw, 63.97vh) scale(0.3271);
  }
  to {
    transform: translate(72.28235vw, 100vh) scale(0.3271);
  }
}
.snow:nth-child(94) {
  opacity: 0.6806;
  transform: translate(75.0243vw, -10px) scale(0.4711);
  animation: fall-94 21s -5s linear infinite;
}
@keyframes fall-94 {
  71.015% {
    transform: translate(84.0779vw, 71.015vh) scale(0.4711);
  }
  to {
    transform: translate(79.5511vw, 100vh) scale(0.4711);
  }
}
.snow:nth-child(95) {
  opacity: 0.215;
  transform: translate(72.3401vw, -10px) scale(0.7822);
  animation: fall-95 11s -8s linear infinite;
}
@keyframes fall-95 {
  54.998% {
    transform: translate(72.1752vw, 54.998vh) scale(0.7822);
  }
  to {
    transform: translate(72.25765vw, 100vh) scale(0.7822);
  }
}
.snow:nth-child(96) {
  opacity: 0.5875;
  transform: translate(8.9831vw, -10px) scale(0.7458);
  animation: fall-96 23s -25s linear infinite;
}
@keyframes fall-96 {
  71.996% {
    transform: translate(18.1237vw, 71.996vh) scale(0.7458);
  }
  to {
    transform: translate(13.5534vw, 100vh) scale(0.7458);
  }
}
.snow:nth-child(97) {
  opacity: 0.532;
  transform: translate(90.7597vw, -10px) scale(0.3279);
  animation: fall-97 21s -6s linear infinite;
}
@keyframes fall-97 {
  54.341% {
    transform: translate(100.6129vw, 54.341vh) scale(0.3279);
  }
  to {
    transform: translate(95.6863vw, 100vh) scale(0.3279);
  }
}
.snow:nth-child(98) {
  opacity: 0.0178;
  transform: translate(69.4698vw, -10px) scale(0.2675);
  animation: fall-98 28s -25s linear infinite;
}
@keyframes fall-98 {
  50.04% {
    transform: translate(64.2555vw, 50.04vh) scale(0.2675);
  }
  to {
    transform: translate(66.86265vw, 100vh) scale(0.2675);
  }
}
.snow:nth-child(99) {
  opacity: 0.2295;
  transform: translate(14.1698vw, -10px) scale(0.804);
  animation: fall-99 12s -2s linear infinite;
}
@keyframes fall-99 {
  46.874% {
    transform: translate(13.6037vw, 46.874vh) scale(0.804);
  }
  to {
    transform: translate(13.88675vw, 100vh) scale(0.804);
  }
}
.snow:nth-child(100) {
  opacity: 0.8734;
  transform: translate(54.6129vw, -10px) scale(0.9836);
  animation: fall-100 19s -3s linear infinite;
}
@keyframes fall-100 {
  42.752% {
    transform: translate(47.6227vw, 42.752vh) scale(0.9836);
  }
  to {
    transform: translate(51.1178vw, 100vh) scale(0.9836);
  }
}
.snow:nth-child(101) {
  opacity: 0.1329;
  transform: translate(96.9541vw, -10px) scale(0.0904);
  animation: fall-101 29s -3s linear infinite;
}
@keyframes fall-101 {
  34.614% {
    transform: translate(105.6488vw, 34.614vh) scale(0.0904);
  }
  to {
    transform: translate(101.30145vw, 100vh) scale(0.0904);
  }
}
.snow:nth-child(102) {
  opacity: 0.486;
  transform: translate(35.5865vw, -10px) scale(0.0291);
  animation: fall-102 26s -10s linear infinite;
}
@keyframes fall-102 {
  73.784% {
    transform: translate(38.1902vw, 73.784vh) scale(0.0291);
  }
  to {
    transform: translate(36.88835vw, 100vh) scale(0.0291);
  }
}
.snow:nth-child(103) {
  opacity: 0.4796;
  transform: translate(34.4209vw, -10px) scale(0.5379);
  animation: fall-103 20s -19s linear infinite;
}
@keyframes fall-103 {
  48.577% {
    transform: translate(26.6606vw, 48.577vh) scale(0.5379);
  }
  to {
    transform: translate(30.54075vw, 100vh) scale(0.5379);
  }
}
.snow:nth-child(104) {
  opacity: 0.9333;
  transform: translate(73.0355vw, -10px) scale(0.0983);
  animation: fall-104 26s -5s linear infinite;
}
@keyframes fall-104 {
  35.82% {
    transform: translate(65.5409vw, 35.82vh) scale(0.0983);
  }
  to {
    transform: translate(69.2882vw, 100vh) scale(0.0983);
  }
}
.snow:nth-child(105) {
  opacity: 0.1355;
  transform: translate(72.3815vw, -10px) scale(0.2566);
  animation: fall-105 17s -27s linear infinite;
}
@keyframes fall-105 {
  63.111% {
    transform: translate(78.427vw, 63.111vh) scale(0.2566);
  }
  to {
    transform: translate(75.40425vw, 100vh) scale(0.2566);
  }
}
.snow:nth-child(106) {
  opacity: 0.2263;
  transform: translate(78.8218vw, -10px) scale(0.2316);
  animation: fall-106 15s -10s linear infinite;
}
@keyframes fall-106 {
  52.503% {
    transform: translate(75.4026vw, 52.503vh) scale(0.2316);
  }
  to {
    transform: translate(77.1122vw, 100vh) scale(0.2316);
  }
}
.snow:nth-child(107) {
  opacity: 0.2515;
  transform: translate(38.2097vw, -10px) scale(0.7583);
  animation: fall-107 12s -27s linear infinite;
}
@keyframes fall-107 {
  52.765% {
    transform: translate(35.6888vw, 52.765vh) scale(0.7583);
  }
  to {
    transform: translate(36.94925vw, 100vh) scale(0.7583);
  }
}
.snow:nth-child(108) {
  opacity: 0.1048;
  transform: translate(1.0097vw, -10px) scale(0.7943);
  animation: fall-108 28s -27s linear infinite;
}
@keyframes fall-108 {
  78.028% {
    transform: translate(-7.987vw, 78.028vh) scale(0.7943);
  }
  to {
    transform: translate(-3.48865vw, 100vh) scale(0.7943);
  }
}
.snow:nth-child(109) {
  opacity: 0.9686;
  transform: translate(55.3615vw, -10px) scale(0.796);
  animation: fall-109 29s -13s linear infinite;
}
@keyframes fall-109 {
  51.904% {
    transform: translate(51.945vw, 51.904vh) scale(0.796);
  }
  to {
    transform: translate(53.65325vw, 100vh) scale(0.796);
  }
}
.snow:nth-child(110) {
  opacity: 0.437;
  transform: translate(28.2822vw, -10px) scale(0.656);
  animation: fall-110 20s -5s linear infinite;
}
@keyframes fall-110 {
  60.009% {
    transform: translate(36.708vw, 60.009vh) scale(0.656);
  }
  to {
    transform: translate(32.4951vw, 100vh) scale(0.656);
  }
}
.snow:nth-child(111) {
  opacity: 0.4827;
  transform: translate(75.2029vw, -10px) scale(0.1344);
  animation: fall-111 15s -21s linear infinite;
}
@keyframes fall-111 {
  34.848% {
    transform: translate(73.9721vw, 34.848vh) scale(0.1344);
  }
  to {
    transform: translate(74.5875vw, 100vh) scale(0.1344);
  }
}
.snow:nth-child(112) {
  opacity: 0.4733;
  transform: translate(44.7023vw, -10px) scale(0.5803);
  animation: fall-112 30s -11s linear infinite;
}
@keyframes fall-112 {
  44.221% {
    transform: translate(46.4093vw, 44.221vh) scale(0.5803);
  }
  to {
    transform: translate(45.5558vw, 100vh) scale(0.5803);
  }
}
.snow:nth-child(113) {
  opacity: 0.8018;
  transform: translate(44.3284vw, -10px) scale(0.3927);
  animation: fall-113 24s -3s linear infinite;
}
@keyframes fall-113 {
  58.839% {
    transform: translate(47.3452vw, 58.839vh) scale(0.3927);
  }
  to {
    transform: translate(45.8368vw, 100vh) scale(0.3927);
  }
}
.snow:nth-child(114) {
  opacity: 0.7268;
  transform: translate(17.892vw, -10px) scale(0.7735);
  animation: fall-114 19s -11s linear infinite;
}
@keyframes fall-114 {
  77.12% {
    transform: translate(14.1146vw, 77.12vh) scale(0.7735);
  }
  to {
    transform: translate(16.0033vw, 100vh) scale(0.7735);
  }
}
.snow:nth-child(115) {
  opacity: 0.677;
  transform: translate(15.1187vw, -10px) scale(0.8976);
  animation: fall-115 16s -14s linear infinite;
}
@keyframes fall-115 {
  46.919% {
    transform: translate(12.1092vw, 46.919vh) scale(0.8976);
  }
  to {
    transform: translate(13.61395vw, 100vh) scale(0.8976);
  }
}
.snow:nth-child(116) {
  opacity: 0.0271;
  transform: translate(21.3334vw, -10px) scale(0.6434);
  animation: fall-116 12s -10s linear infinite;
}
@keyframes fall-116 {
  40.821% {
    transform: translate(31.0507vw, 40.821vh) scale(0.6434);
  }
  to {
    transform: translate(26.19205vw, 100vh) scale(0.6434);
  }
}
.snow:nth-child(117) {
  opacity: 0.2842;
  transform: translate(2.0784vw, -10px) scale(0.584);
  animation: fall-117 22s -3s linear infinite;
}
@keyframes fall-117 {
  48.521% {
    transform: translate(1.8354vw, 48.521vh) scale(0.584);
  }
  to {
    transform: translate(1.9569vw, 100vh) scale(0.584);
  }
}
.snow:nth-child(118) {
  opacity: 0.4203;
  transform: translate(45.0016vw, -10px) scale(0.4169);
  animation: fall-118 23s -23s linear infinite;
}
@keyframes fall-118 {
  48.55% {
    transform: translate(37.8671vw, 48.55vh) scale(0.4169);
  }
  to {
    transform: translate(41.43435vw, 100vh) scale(0.4169);
  }
}
.snow:nth-child(119) {
  opacity: 0.1293;
  transform: translate(87.2232vw, -10px) scale(0.9445);
  animation: fall-119 26s -19s linear infinite;
}
@keyframes fall-119 {
  64.381% {
    transform: translate(85.2509vw, 64.381vh) scale(0.9445);
  }
  to {
    transform: translate(86.23705vw, 100vh) scale(0.9445);
  }
}
.snow:nth-child(120) {
  opacity: 0.5318;
  transform: translate(3.5196vw, -10px) scale(0.4083);
  animation: fall-120 28s -11s linear infinite;
}
@keyframes fall-120 {
  34.783% {
    transform: translate(1vw, 34.783vh) scale(0.4083);
  }
  to {
    transform: translate(2.2598vw, 100vh) scale(0.4083);
  }
}
.snow:nth-child(121) {
  opacity: 0.2871;
  transform: translate(10.9808vw, -10px) scale(0.6673);
  animation: fall-121 12s -21s linear infinite;
}
@keyframes fall-121 {
  61.419% {
    transform: translate(8.3043vw, 61.419vh) scale(0.6673);
  }
  to {
    transform: translate(9.64255vw, 100vh) scale(0.6673);
  }
}
.snow:nth-child(122) {
  opacity: 0.7687;
  transform: translate(83.3916vw, -10px) scale(0.8952);
  animation: fall-122 11s -30s linear infinite;
}
@keyframes fall-122 {
  65.128% {
    transform: translate(92.8251vw, 65.128vh) scale(0.8952);
  }
  to {
    transform: translate(88.10835vw, 100vh) scale(0.8952);
  }
}
.snow:nth-child(123) {
  opacity: 0.9096;
  transform: translate(83.4965vw, -10px) scale(0.6251);
  animation: fall-123 12s -24s linear infinite;
}
@keyframes fall-123 {
  68.977% {
    transform: translate(92.8739vw, 68.977vh) scale(0.6251);
  }
  to {
    transform: translate(88.1852vw, 100vh) scale(0.6251);
  }
}
.snow:nth-child(124) {
  opacity: 0.2437;
  transform: translate(30.6015vw, -10px) scale(0.8833);
  animation: fall-124 23s -3s linear infinite;
}
@keyframes fall-124 {
  32.14% {
    transform: translate(37.7732vw, 32.14vh) scale(0.8833);
  }
  to {
    transform: translate(34.18735vw, 100vh) scale(0.8833);
  }
}
.snow:nth-child(125) {
  opacity: 0.1913;
  transform: translate(95.728vw, -10px) scale(0.188);
  animation: fall-125 24s -11s linear infinite;
}
@keyframes fall-125 {
  32.086% {
    transform: translate(87.8201vw, 32.086vh) scale(0.188);
  }
  to {
    transform: translate(91.77405vw, 100vh) scale(0.188);
  }
}
.snow:nth-child(126) {
  opacity: 0.7218;
  transform: translate(31.9819vw, -10px) scale(0.1912);
  animation: fall-126 30s -26s linear infinite;
}
@keyframes fall-126 {
  69.453% {
    transform: translate(37.9693vw, 69.453vh) scale(0.1912);
  }
  to {
    transform: translate(34.9756vw, 100vh) scale(0.1912);
  }
}
.snow:nth-child(127) {
  opacity: 0.9142;
  transform: translate(53.2585vw, -10px) scale(0.4062);
  animation: fall-127 27s -22s linear infinite;
}
@keyframes fall-127 {
  46.666% {
    transform: translate(52.4342vw, 46.666vh) scale(0.4062);
  }
  to {
    transform: translate(52.84635vw, 100vh) scale(0.4062);
  }
}
.snow:nth-child(128) {
  opacity: 0.6278;
  transform: translate(44.8468vw, -10px) scale(0.0936);
  animation: fall-128 13s -25s linear infinite;
}
@keyframes fall-128 {
  30.207% {
    transform: translate(35.6771vw, 30.207vh) scale(0.0936);
  }
  to {
    transform: translate(40.26195vw, 100vh) scale(0.0936);
  }
}
.snow:nth-child(129) {
  opacity: 0.7452;
  transform: translate(4.3837vw, -10px) scale(0.0675);
  animation: fall-129 26s -24s linear infinite;
}
@keyframes fall-129 {
  75.415% {
    transform: translate(5.8928vw, 75.415vh) scale(0.0675);
  }
  to {
    transform: translate(5.13825vw, 100vh) scale(0.0675);
  }
}
.snow:nth-child(130) {
  opacity: 0.2822;
  transform: translate(43.4771vw, -10px) scale(0.0981);
  animation: fall-130 25s -28s linear infinite;
}
@keyframes fall-130 {
  44.411% {
    transform: translate(47.6008vw, 44.411vh) scale(0.0981);
  }
  to {
    transform: translate(45.53895vw, 100vh) scale(0.0981);
  }
}
.snow:nth-child(131) {
  opacity: 0.6166;
  transform: translate(85.6292vw, -10px) scale(0.8154);
  animation: fall-131 22s -10s linear infinite;
}
@keyframes fall-131 {
  60.804% {
    transform: translate(83.8937vw, 60.804vh) scale(0.8154);
  }
  to {
    transform: translate(84.76145vw, 100vh) scale(0.8154);
  }
}
.snow:nth-child(132) {
  opacity: 0.9862;
  transform: translate(91.8093vw, -10px) scale(0.2027);
  animation: fall-132 24s -16s linear infinite;
}
@keyframes fall-132 {
  64.31% {
    transform: translate(95.6357vw, 64.31vh) scale(0.2027);
  }
  to {
    transform: translate(93.7225vw, 100vh) scale(0.2027);
  }
}
.snow:nth-child(133) {
  opacity: 0.0376;
  transform: translate(21.8739vw, -10px) scale(0.6635);
  animation: fall-133 17s -8s linear infinite;
}
@keyframes fall-133 {
  33.389% {
    transform: translate(21.1044vw, 33.389vh) scale(0.6635);
  }
  to {
    transform: translate(21.48915vw, 100vh) scale(0.6635);
  }
}
.snow:nth-child(134) {
  opacity: 0.6706;
  transform: translate(78.6056vw, -10px) scale(0.3633);
  animation: fall-134 15s -6s linear infinite;
}
@keyframes fall-134 {
  70.103% {
    transform: translate(71.0021vw, 70.103vh) scale(0.3633);
  }
  to {
    transform: translate(74.80385vw, 100vh) scale(0.3633);
  }
}
.snow:nth-child(135) {
  opacity: 0.3483;
  transform: translate(33.6703vw, -10px) scale(0.3721);
  animation: fall-135 22s -11s linear infinite;
}
@keyframes fall-135 {
  41.402% {
    transform: translate(31.3775vw, 41.402vh) scale(0.3721);
  }
  to {
    transform: translate(32.5239vw, 100vh) scale(0.3721);
  }
}
.snow:nth-child(136) {
  opacity: 0.3896;
  transform: translate(63.0627vw, -10px) scale(0.4769);
  animation: fall-136 11s -16s linear infinite;
}
@keyframes fall-136 {
  78.833% {
    transform: translate(54.1316vw, 78.833vh) scale(0.4769);
  }
  to {
    transform: translate(58.59715vw, 100vh) scale(0.4769);
  }
}
.snow:nth-child(137) {
  opacity: 0.9398;
  transform: translate(56.4254vw, -10px) scale(0.3786);
  animation: fall-137 23s -14s linear infinite;
}
@keyframes fall-137 {
  32.584% {
    transform: translate(46.8643vw, 32.584vh) scale(0.3786);
  }
  to {
    transform: translate(51.64485vw, 100vh) scale(0.3786);
  }
}
.snow:nth-child(138) {
  opacity: 0.9137;
  transform: translate(41.8807vw, -10px) scale(0.2741);
  animation: fall-138 23s -15s linear infinite;
}
@keyframes fall-138 {
  67.088% {
    transform: translate(45.5775vw, 67.088vh) scale(0.2741);
  }
  to {
    transform: translate(43.7291vw, 100vh) scale(0.2741);
  }
}
.snow:nth-child(139) {
  opacity: 0.1662;
  transform: translate(18.5341vw, -10px) scale(0.1071);
  animation: fall-139 12s -19s linear infinite;
}
@keyframes fall-139 {
  32.962% {
    transform: translate(28.3299vw, 32.962vh) scale(0.1071);
  }
  to {
    transform: translate(23.432vw, 100vh) scale(0.1071);
  }
}
.snow:nth-child(140) {
  opacity: 0.8421;
  transform: translate(74.3555vw, -10px) scale(0.4146);
  animation: fall-140 18s -15s linear infinite;
}
@keyframes fall-140 {
  60.998% {
    transform: translate(80.0696vw, 60.998vh) scale(0.4146);
  }
  to {
    transform: translate(77.21255vw, 100vh) scale(0.4146);
  }
}
.snow:nth-child(141) {
  opacity: 0.1281;
  transform: translate(89.5657vw, -10px) scale(0.9471);
  animation: fall-141 14s -24s linear infinite;
}
@keyframes fall-141 {
  77.955% {
    transform: translate(91.8525vw, 77.955vh) scale(0.9471);
  }
  to {
    transform: translate(90.7091vw, 100vh) scale(0.9471);
  }
}
.snow:nth-child(142) {
  opacity: 0.9756;
  transform: translate(11.3423vw, -10px) scale(0.0576);
  animation: fall-142 20s -7s linear infinite;
}
@keyframes fall-142 {
  46.622% {
    transform: translate(5.123vw, 46.622vh) scale(0.0576);
  }
  to {
    transform: translate(8.23265vw, 100vh) scale(0.0576);
  }
}
.snow:nth-child(143) {
  opacity: 0.5564;
  transform: translate(99.347vw, -10px) scale(0.0661);
  animation: fall-143 26s -11s linear infinite;
}
@keyframes fall-143 {
  79.587% {
    transform: translate(102.4815vw, 79.587vh) scale(0.0661);
  }
  to {
    transform: translate(100.91425vw, 100vh) scale(0.0661);
  }
}
.snow:nth-child(144) {
  opacity: 0.3272;
  transform: translate(90.6vw, -10px) scale(0.5533);
  animation: fall-144 19s -17s linear infinite;
}
@keyframes fall-144 {
  55.801% {
    transform: translate(87.3876vw, 55.801vh) scale(0.5533);
  }
  to {
    transform: translate(88.9938vw, 100vh) scale(0.5533);
  }
}
.snow:nth-child(145) {
  opacity: 0.4935;
  transform: translate(75.2074vw, -10px) scale(0.082);
  animation: fall-145 27s -4s linear infinite;
}
@keyframes fall-145 {
  30.951% {
    transform: translate(76.4175vw, 30.951vh) scale(0.082);
  }
  to {
    transform: translate(75.81245vw, 100vh) scale(0.082);
  }
}
.snow:nth-child(146) {
  opacity: 0.0983;
  transform: translate(65.0151vw, -10px) scale(0.9099);
  animation: fall-146 28s -14s linear infinite;
}
@keyframes fall-146 {
  30.793% {
    transform: translate(55.3882vw, 30.793vh) scale(0.9099);
  }
  to {
    transform: translate(60.20165vw, 100vh) scale(0.9099);
  }
}
.snow:nth-child(147) {
  opacity: 0.6756;
  transform: translate(22.7837vw, -10px) scale(0.3684);
  animation: fall-147 14s -7s linear infinite;
}
@keyframes fall-147 {
  65.88% {
    transform: translate(20.383vw, 65.88vh) scale(0.3684);
  }
  to {
    transform: translate(21.58335vw, 100vh) scale(0.3684);
  }
}
.snow:nth-child(148) {
  opacity: 0.7274;
  transform: translate(34.5669vw, -10px) scale(0.9741);
  animation: fall-148 26s -5s linear infinite;
}
@keyframes fall-148 {
  58.759% {
    transform: translate(31.8473vw, 58.759vh) scale(0.9741);
  }
  to {
    transform: translate(33.2071vw, 100vh) scale(0.9741);
  }
}
.snow:nth-child(149) {
  opacity: 0.0465;
  transform: translate(15.8983vw, -10px) scale(0.3133);
  animation: fall-149 14s -9s linear infinite;
}
@keyframes fall-149 {
  34.776% {
    transform: translate(18.6131vw, 34.776vh) scale(0.3133);
  }
  to {
    transform: translate(17.2557vw, 100vh) scale(0.3133);
  }
}
.snow:nth-child(150) {
  opacity: 0.7184;
  transform: translate(90.9929vw, -10px) scale(0.3269);
  animation: fall-150 17s -13s linear infinite;
}
@keyframes fall-150 {
  78.072% {
    transform: translate(81.9408vw, 78.072vh) scale(0.3269);
  }
  to {
    transform: translate(86.46685vw, 100vh) scale(0.3269);
  }
}
.snow:nth-child(151) {
  opacity: 0.2733;
  transform: translate(44.2695vw, -10px) scale(0.6724);
  animation: fall-151 19s -13s linear infinite;
}
@keyframes fall-151 {
  56.135% {
    transform: translate(51.5634vw, 56.135vh) scale(0.6724);
  }
  to {
    transform: translate(47.91645vw, 100vh) scale(0.6724);
  }
}
.snow:nth-child(152) {
  opacity: 0.3586;
  transform: translate(5.3947vw, -10px) scale(0.6178);
  animation: fall-152 18s -14s linear infinite;
}
@keyframes fall-152 {
  53.997% {
    transform: translate(12.8967vw, 53.997vh) scale(0.6178);
  }
  to {
    transform: translate(9.1457vw, 100vh) scale(0.6178);
  }
}
.snow:nth-child(153) {
  opacity: 0.819;
  transform: translate(83.0262vw, -10px) scale(0.6421);
  animation: fall-153 29s -18s linear infinite;
}
@keyframes fall-153 {
  66.415% {
    transform: translate(88.4559vw, 66.415vh) scale(0.6421);
  }
  to {
    transform: translate(85.74105vw, 100vh) scale(0.6421);
  }
}
.snow:nth-child(154) {
  opacity: 0.4325;
  transform: translate(92.7686vw, -10px) scale(0.1949);
  animation: fall-154 28s -15s linear infinite;
}
@keyframes fall-154 {
  58.162% {
    transform: translate(99.4688vw, 58.162vh) scale(0.1949);
  }
  to {
    transform: translate(96.1187vw, 100vh) scale(0.1949);
  }
}
.snow:nth-child(155) {
  opacity: 0.6004;
  transform: translate(16.5734vw, -10px) scale(0.9835);
  animation: fall-155 27s -17s linear infinite;
}
@keyframes fall-155 {
  47.334% {
    transform: translate(17.8638vw, 47.334vh) scale(0.9835);
  }
  to {
    transform: translate(17.2186vw, 100vh) scale(0.9835);
  }
}
.snow:nth-child(156) {
  opacity: 0.9429;
  transform: translate(57.5079vw, -10px) scale(0.4112);
  animation: fall-156 29s -25s linear infinite;
}
@keyframes fall-156 {
  33.584% {
    transform: translate(49.1722vw, 33.584vh) scale(0.4112);
  }
  to {
    transform: translate(53.34005vw, 100vh) scale(0.4112);
  }
}
.snow:nth-child(157) {
  opacity: 0.8481;
  transform: translate(43.1714vw, -10px) scale(0.2687);
  animation: fall-157 21s -5s linear infinite;
}
@keyframes fall-157 {
  58.756% {
    transform: translate(42.3869vw, 58.756vh) scale(0.2687);
  }
  to {
    transform: translate(42.77915vw, 100vh) scale(0.2687);
  }
}
.snow:nth-child(158) {
  opacity: 0.8287;
  transform: translate(55.7591vw, -10px) scale(0.3158);
  animation: fall-158 12s -26s linear infinite;
}
@keyframes fall-158 {
  50.209% {
    transform: translate(64.0604vw, 50.209vh) scale(0.3158);
  }
  to {
    transform: translate(59.90975vw, 100vh) scale(0.3158);
  }
}
.snow:nth-child(159) {
  opacity: 0.0476;
  transform: translate(88.1444vw, -10px) scale(0.0185);
  animation: fall-159 13s -8s linear infinite;
}
@keyframes fall-159 {
  65.781% {
    transform: translate(92.6306vw, 65.781vh) scale(0.0185);
  }
  to {
    transform: translate(90.3875vw, 100vh) scale(0.0185);
  }
}
.snow:nth-child(160) {
  opacity: 0.0696;
  transform: translate(6.2431vw, -10px) scale(0.3026);
  animation: fall-160 20s -1s linear infinite;
}
@keyframes fall-160 {
  32.033% {
    transform: translate(14.1939vw, 32.033vh) scale(0.3026);
  }
  to {
    transform: translate(10.2185vw, 100vh) scale(0.3026);
  }
}
.snow:nth-child(161) {
  opacity: 0.4161;
  transform: translate(38.5585vw, -10px) scale(0.5529);
  animation: fall-161 25s -28s linear infinite;
}
@keyframes fall-161 {
  55.281% {
    transform: translate(29.5203vw, 55.281vh) scale(0.5529);
  }
  to {
    transform: translate(34.0394vw, 100vh) scale(0.5529);
  }
}
.snow:nth-child(162) {
  opacity: 0.7155;
  transform: translate(45.6871vw, -10px) scale(0.9732);
  animation: fall-162 30s -10s linear infinite;
}
@keyframes fall-162 {
  71.715% {
    transform: translate(44.3176vw, 71.715vh) scale(0.9732);
  }
  to {
    transform: translate(45.00235vw, 100vh) scale(0.9732);
  }
}
.snow:nth-child(163) {
  opacity: 0.1843;
  transform: translate(58.5487vw, -10px) scale(0.7483);
  animation: fall-163 23s -28s linear infinite;
}
@keyframes fall-163 {
  46.228% {
    transform: translate(56.026vw, 46.228vh) scale(0.7483);
  }
  to {
    transform: translate(57.28735vw, 100vh) scale(0.7483);
  }
}
.snow:nth-child(164) {
  opacity: 0.0553;
  transform: translate(31.3876vw, -10px) scale(0.0893);
  animation: fall-164 12s -15s linear infinite;
}
@keyframes fall-164 {
  60.871% {
    transform: translate(36.7835vw, 60.871vh) scale(0.0893);
  }
  to {
    transform: translate(34.08555vw, 100vh) scale(0.0893);
  }
}
.snow:nth-child(165) {
  opacity: 0.6822;
  transform: translate(4.6957vw, -10px) scale(0.5183);
  animation: fall-165 11s -9s linear infinite;
}
@keyframes fall-165 {
  78.948% {
    transform: translate(0.8342vw, 78.948vh) scale(0.5183);
  }
  to {
    transform: translate(2.76495vw, 100vh) scale(0.5183);
  }
}
.snow:nth-child(166) {
  opacity: 0.0942;
  transform: translate(87.1611vw, -10px) scale(0.7842);
  animation: fall-166 28s -10s linear infinite;
}
@keyframes fall-166 {
  49.415% {
    transform: translate(94.7229vw, 49.415vh) scale(0.7842);
  }
  to {
    transform: translate(90.942vw, 100vh) scale(0.7842);
  }
}
.snow:nth-child(167) {
  opacity: 0.8855;
  transform: translate(33.1252vw, -10px) scale(0.9019);
  animation: fall-167 28s -4s linear infinite;
}
@keyframes fall-167 {
  41.073% {
    transform: translate(33.5373vw, 41.073vh) scale(0.9019);
  }
  to {
    transform: translate(33.33125vw, 100vh) scale(0.9019);
  }
}
.snow:nth-child(168) {
  opacity: 0.0857;
  transform: translate(45.1413vw, -10px) scale(0.064);
  animation: fall-168 30s -27s linear infinite;
}
@keyframes fall-168 {
  33.682% {
    transform: translate(38.6474vw, 33.682vh) scale(0.064);
  }
  to {
    transform: translate(41.89435vw, 100vh) scale(0.064);
  }
}
.snow:nth-child(169) {
  opacity: 0.9838;
  transform: translate(24.7746vw, -10px) scale(0.2299);
  animation: fall-169 16s -18s linear infinite;
}
@keyframes fall-169 {
  46.074% {
    transform: translate(31.1372vw, 46.074vh) scale(0.2299);
  }
  to {
    transform: translate(27.9559vw, 100vh) scale(0.2299);
  }
}
.snow:nth-child(170) {
  opacity: 0.5293;
  transform: translate(56.4053vw, -10px) scale(0.2645);
  animation: fall-170 30s -11s linear infinite;
}
@keyframes fall-170 {
  62.157% {
    transform: translate(50.3605vw, 62.157vh) scale(0.2645);
  }
  to {
    transform: translate(53.3829vw, 100vh) scale(0.2645);
  }
}
.snow:nth-child(171) {
  opacity: 0.9035;
  transform: translate(88.1133vw, -10px) scale(0.714);
  animation: fall-171 24s -5s linear infinite;
}
@keyframes fall-171 {
  77.525% {
    transform: translate(93.7155vw, 77.525vh) scale(0.714);
  }
  to {
    transform: translate(90.9144vw, 100vh) scale(0.714);
  }
}
.snow:nth-child(172) {
  opacity: 0.053;
  transform: translate(1.8625vw, -10px) scale(0.1675);
  animation: fall-172 24s -15s linear infinite;
}
@keyframes fall-172 {
  37.082% {
    transform: translate(-5.7056vw, 37.082vh) scale(0.1675);
  }
  to {
    transform: translate(-1.92155vw, 100vh) scale(0.1675);
  }
}
.snow:nth-child(173) {
  opacity: 0.6487;
  transform: translate(49.1341vw, -10px) scale(0.0297);
  animation: fall-173 15s -24s linear infinite;
}
@keyframes fall-173 {
  58.159% {
    transform: translate(39.339vw, 58.159vh) scale(0.0297);
  }
  to {
    transform: translate(44.23655vw, 100vh) scale(0.0297);
  }
}
.snow:nth-child(174) {
  opacity: 0.2246;
  transform: translate(95.3316vw, -10px) scale(0.1179);
  animation: fall-174 28s -15s linear infinite;
}
@keyframes fall-174 {
  69.74% {
    transform: translate(103.1506vw, 69.74vh) scale(0.1179);
  }
  to {
    transform: translate(99.2411vw, 100vh) scale(0.1179);
  }
}
.snow:nth-child(175) {
  opacity: 0.0196;
  transform: translate(12.6212vw, -10px) scale(0.6837);
  animation: fall-175 12s -21s linear infinite;
}
@keyframes fall-175 {
  67.86% {
    transform: translate(19.6804vw, 67.86vh) scale(0.6837);
  }
  to {
    transform: translate(16.1508vw, 100vh) scale(0.6837);
  }
}
.snow:nth-child(176) {
  opacity: 0.5878;
  transform: translate(38.4583vw, -10px) scale(0.4608);
  animation: fall-176 25s -6s linear infinite;
}
@keyframes fall-176 {
  59.031% {
    transform: translate(47.7997vw, 59.031vh) scale(0.4608);
  }
  to {
    transform: translate(43.129vw, 100vh) scale(0.4608);
  }
}
.snow:nth-child(177) {
  opacity: 0.048;
  transform: translate(97.8524vw, -10px) scale(0.9395);
  animation: fall-177 24s -14s linear infinite;
}
@keyframes fall-177 {
  56.606% {
    transform: translate(104.7906vw, 56.606vh) scale(0.9395);
  }
  to {
    transform: translate(101.3215vw, 100vh) scale(0.9395);
  }
}
.snow:nth-child(178) {
  opacity: 0.8657;
  transform: translate(3.8898vw, -10px) scale(0.4138);
  animation: fall-178 23s -11s linear infinite;
}
@keyframes fall-178 {
  32.748% {
    transform: translate(-0.005vw, 32.748vh) scale(0.4138);
  }
  to {
    transform: translate(1.9424vw, 100vh) scale(0.4138);
  }
}
.snow:nth-child(179) {
  opacity: 0.5379;
  transform: translate(7.0516vw, -10px) scale(0.7786);
  animation: fall-179 19s -5s linear infinite;
}
@keyframes fall-179 {
  45.144% {
    transform: translate(0.4609vw, 45.144vh) scale(0.7786);
  }
  to {
    transform: translate(3.75625vw, 100vh) scale(0.7786);
  }
}
.snow:nth-child(180) {
  opacity: 0.0047;
  transform: translate(71.2617vw, -10px) scale(0.2009);
  animation: fall-180 14s -21s linear infinite;
}
@keyframes fall-180 {
  49.262% {
    transform: translate(73.953vw, 49.262vh) scale(0.2009);
  }
  to {
    transform: translate(72.60735vw, 100vh) scale(0.2009);
  }
}
.snow:nth-child(181) {
  opacity: 0.7274;
  transform: translate(82.8618vw, -10px) scale(0.6518);
  animation: fall-181 14s -14s linear infinite;
}
@keyframes fall-181 {
  45.319% {
    transform: translate(76.1216vw, 45.319vh) scale(0.6518);
  }
  to {
    transform: translate(79.4917vw, 100vh) scale(0.6518);
  }
}
.snow:nth-child(182) {
  opacity: 0.2132;
  transform: translate(35.0117vw, -10px) scale(0.0522);
  animation: fall-182 17s -16s linear infinite;
}
@keyframes fall-182 {
  34.079% {
    transform: translate(40.3391vw, 34.079vh) scale(0.0522);
  }
  to {
    transform: translate(37.6754vw, 100vh) scale(0.0522);
  }
}
.snow:nth-child(183) {
  opacity: 0.5072;
  transform: translate(37.2892vw, -10px) scale(0.7146);
  animation: fall-183 30s -23s linear infinite;
}
@keyframes fall-183 {
  76.313% {
    transform: translate(27.7441vw, 76.313vh) scale(0.7146);
  }
  to {
    transform: translate(32.51665vw, 100vh) scale(0.7146);
  }
}
.snow:nth-child(184) {
  opacity: 0.6508;
  transform: translate(5.4791vw, -10px) scale(0.7412);
  animation: fall-184 28s -5s linear infinite;
}
@keyframes fall-184 {
  78.809% {
    transform: translate(4.7347vw, 78.809vh) scale(0.7412);
  }
  to {
    transform: translate(5.1069vw, 100vh) scale(0.7412);
  }
}
.snow:nth-child(185) {
  opacity: 0.2986;
  transform: translate(69.1339vw, -10px) scale(0.9785);
  animation: fall-185 18s -1s linear infinite;
}
@keyframes fall-185 {
  59.926% {
    transform: translate(77.4013vw, 59.926vh) scale(0.9785);
  }
  to {
    transform: translate(73.2676vw, 100vh) scale(0.9785);
  }
}
.snow:nth-child(186) {
  opacity: 0.8638;
  transform: translate(8.554vw, -10px) scale(0.5151);
  animation: fall-186 22s -25s linear infinite;
}
@keyframes fall-186 {
  75.852% {
    transform: translate(9.4658vw, 75.852vh) scale(0.5151);
  }
  to {
    transform: translate(9.0099vw, 100vh) scale(0.5151);
  }
}
.snow:nth-child(187) {
  opacity: 0.707;
  transform: translate(17.2122vw, -10px) scale(0.0596);
  animation: fall-187 12s -14s linear infinite;
}
@keyframes fall-187 {
  70.084% {
    transform: translate(20.6699vw, 70.084vh) scale(0.0596);
  }
  to {
    transform: translate(18.94105vw, 100vh) scale(0.0596);
  }
}
.snow:nth-child(188) {
  opacity: 0.0621;
  transform: translate(66.4952vw, -10px) scale(0.7871);
  animation: fall-188 22s -22s linear infinite;
}
@keyframes fall-188 {
  62.892% {
    transform: translate(57.6546vw, 62.892vh) scale(0.7871);
  }
  to {
    transform: translate(62.0749vw, 100vh) scale(0.7871);
  }
}
.snow:nth-child(189) {
  opacity: 0.6638;
  transform: translate(53.6585vw, -10px) scale(0.0058);
  animation: fall-189 14s -19s linear infinite;
}
@keyframes fall-189 {
  65.079% {
    transform: translate(59.0744vw, 65.079vh) scale(0.0058);
  }
  to {
    transform: translate(56.36645vw, 100vh) scale(0.0058);
  }
}
.snow:nth-child(190) {
  opacity: 0.8441;
  transform: translate(13.4514vw, -10px) scale(0.9668);
  animation: fall-190 18s -16s linear infinite;
}
@keyframes fall-190 {
  77.095% {
    transform: translate(9.0202vw, 77.095vh) scale(0.9668);
  }
  to {
    transform: translate(11.2358vw, 100vh) scale(0.9668);
  }
}
.snow:nth-child(191) {
  opacity: 0.1481;
  transform: translate(77.7653vw, -10px) scale(0.0027);
  animation: fall-191 11s -29s linear infinite;
}
@keyframes fall-191 {
  58.457% {
    transform: translate(84.2852vw, 58.457vh) scale(0.0027);
  }
  to {
    transform: translate(81.02525vw, 100vh) scale(0.0027);
  }
}
.snow:nth-child(192) {
  opacity: 0.891;
  transform: translate(91.9895vw, -10px) scale(0.0874);
  animation: fall-192 12s -17s linear infinite;
}
@keyframes fall-192 {
  33.21% {
    transform: translate(100.4895vw, 33.21vh) scale(0.0874);
  }
  to {
    transform: translate(96.2395vw, 100vh) scale(0.0874);
  }
}
.snow:nth-child(193) {
  opacity: 0.4358;
  transform: translate(7.8351vw, -10px) scale(0.0681);
  animation: fall-193 28s -9s linear infinite;
}
@keyframes fall-193 {
  72.773% {
    transform: translate(9.4794vw, 72.773vh) scale(0.0681);
  }
  to {
    transform: translate(8.65725vw, 100vh) scale(0.0681);
  }
}
.snow:nth-child(194) {
  opacity: 0.437;
  transform: translate(15.8338vw, -10px) scale(0.5052);
  animation: fall-194 29s -4s linear infinite;
}
@keyframes fall-194 {
  65.358% {
    transform: translate(21.9292vw, 65.358vh) scale(0.5052);
  }
  to {
    transform: translate(18.8815vw, 100vh) scale(0.5052);
  }
}
.snow:nth-child(195) {
  opacity: 0.4919;
  transform: translate(59.3181vw, -10px) scale(0.4013);
  animation: fall-195 21s -3s linear infinite;
}
@keyframes fall-195 {
  61.867% {
    transform: translate(63.571vw, 61.867vh) scale(0.4013);
  }
  to {
    transform: translate(61.44455vw, 100vh) scale(0.4013);
  }
}
.snow:nth-child(196) {
  opacity: 0.7391;
  transform: translate(80.0856vw, -10px) scale(0.1306);
  animation: fall-196 26s -4s linear infinite;
}
@keyframes fall-196 {
  58.912% {
    transform: translate(82.5023vw, 58.912vh) scale(0.1306);
  }
  to {
    transform: translate(81.29395vw, 100vh) scale(0.1306);
  }
}
.snow:nth-child(197) {
  opacity: 0.5453;
  transform: translate(60.5189vw, -10px) scale(0.8066);
  animation: fall-197 28s -9s linear infinite;
}
@keyframes fall-197 {
  34.187% {
    transform: translate(57.8193vw, 34.187vh) scale(0.8066);
  }
  to {
    transform: translate(59.1691vw, 100vh) scale(0.8066);
  }
}
.snow:nth-child(198) {
  opacity: 0.7078;
  transform: translate(85.917vw, -10px) scale(0.7374);
  animation: fall-198 30s -25s linear infinite;
}
@keyframes fall-198 {
  61.412% {
    transform: translate(76.5673vw, 61.412vh) scale(0.7374);
  }
  to {
    transform: translate(81.24215vw, 100vh) scale(0.7374);
  }
}
.snow:nth-child(199) {
  opacity: 0.3581;
  transform: translate(39.4893vw, -10px) scale(0.1081);
  animation: fall-199 13s -19s linear infinite;
}
@keyframes fall-199 {
  57.1% {
    transform: translate(39.8466vw, 57.1vh) scale(0.1081);
  }
  to {
    transform: translate(39.66795vw, 100vh) scale(0.1081);
  }
}
.snow:nth-child(200) {
  opacity: 0.5415;
  transform: translate(83.1436vw, -10px) scale(0.5019);
  animation: fall-200 28s -29s linear infinite;
}
@keyframes fall-200 {
  41.939% {
    transform: translate(75.5967vw, 41.939vh) scale(0.5019);
  }
  to {
    transform: translate(79.37015vw, 100vh) scale(0.5019);
  }
}


</style>




</head>
<body>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>






<nav class="navbar navbar-expand-lg navbar-light text-light">
  <span class="navbar-brand mb-0 h1 text-light ml-2"><a href="javascript:void(0)" class="text-light">DAPAN&DA</a></span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link text-light" href="/manager/main">관리 Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link text-light" href="/">메인 Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
     <a class="nav-link text-light" href="/manager/managerList">관리자 리스트</a>
      </li>
      <li class="nav-item">
        
        <c:if test="${managerLogin.manager_id == 'employee' }">
        <a class="nav-link text-light" href="/manager/managerPage">전체 통계</a>
        </c:if>
      </li>
    </ul>
  </div>
</nav>

<nav class="navbar navbar-info sticky-top alert-dark flex-md-nowrap p-0 text-dark font-weight-bord">
  <span class="navbar-brand ml-4 h3">${managerLogin.manager_id } 님, 환영합니다.</span>
</nav>







</body>
</html>