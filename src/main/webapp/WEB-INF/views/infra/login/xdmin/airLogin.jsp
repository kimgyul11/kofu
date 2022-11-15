<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/xdmin/css/airLogin.css" />
    <title>AirLanguage</title>
</head>
<body>
<form autocomplete="off">
	
    <div class="loginWrap">
        <div class="login_img">
            <div class="imgmove">
                <h1>언제 어디서나 원어민과 함께</h1>
                <h2>AIR LANGUAGE</h2>
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="220" height="180">
                    <g class="pass-1 pass-animate" fill="none" fill-rule="evenodd">
                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                        width="200" height="200"
                        viewBox="0 0 100 100"
                        style=" fill:#000000;"><path fill="#c7ede6" d="M88.704,55.881c0.3-0.616,0.566-1.264,0.796-1.943c2.633-7.77-1.349-17.078-9.733-19.325C78.86,23.23,70.86,15.421,61.826,14.088c-10.341-1.525-19.814,5.044-22.966,15.485c-3.799-1.346-7.501-1.182-10.99,0.857c-1.583,0.732-3.031,1.812-4.33,3.233c-1.907,2.086-3.147,4.719-3.652,7.495c-0.748,0.118-1.483,0.236-2.176,0.484c-4.04,1.449-6.589,4.431-7.288,8.923c-0.435,2.797,0.443,5.587,0.933,6.714c1.935,4.455,6.422,6.98,10.981,6.312c0.227-0.033,0.557,0.069,0.752,0.233c0.241,7.12,3.698,13.417,8.884,17.014c8.321,5.772,19.027,3.994,25.781-3.921c2.894,2.96,6.338,4.398,10.384,3.876c4.023-0.519,7.147-2.739,9.426-6.349c1.053,0.283,2.051,0.691,3.083,0.804c4.042,0.442,7.324-1.165,9.732-4.8c0.922-1.391,1.793-3.194,1.793-6.354C92.174,60.838,90.88,57.871,88.704,55.881z"></path><path fill="#fff" d="M30.201 35.808H20.17c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h10.031c.276 0 .5.224.5.5S30.478 35.808 30.201 35.808zM33.082 35.808h-1.446c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.446c.276 0 .5.224.5.5S33.358 35.808 33.082 35.808zM37.137 35.808h-2.546c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2.546c.276 0 .5.224.5.5S37.413 35.808 37.137 35.808zM37.137 37.673h-9.616c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h9.616c.276 0 .5.224.5.5S37.413 37.673 37.137 37.673zM25.789 37.673h-.58c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h.58c.276 0 .5.224.5.5S26.065 37.673 25.789 37.673zM23.412 37.673h-1.457c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.457c.276 0 .5.224.5.5S23.688 37.673 23.412 37.673zM32.548 33.944h-5.027c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h5.027c.276 0 .5.224.5.5S32.824 33.944 32.548 33.944zM32.548 32.078h-1.257c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.257c.276 0 .5.224.5.5S32.824 32.078 32.548 32.078zM29.279 39.538h-1.758c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.758c.276 0 .5.224.5.5S29.555 39.538 29.279 39.538z"></path><path fill="#fdfcef" d="M39.541,59.09c1.883,0,3.517,0,3.54,0c2.11,0,3.821-1.674,3.821-3.739c0-1.802-1.302-3.305-3.035-3.66c0.02-0.158,0.034-0.317,0.034-0.48c0-2.139-1.772-3.873-3.957-3.873c-1.29,0-2.433,0.607-3.155,1.543c-0.185-2.381-2.358-4.218-4.9-3.913c-1.859,0.223-3.397,1.629-3.739,3.431c-0.11,0.578-0.098,1.139,0.011,1.665c-0.498-0.525-1.208-0.856-1.998-0.856c-1.446,0-2.627,1.102-2.72,2.494c-0.657-0.142-1.371-0.133-2.123,0.143c-1.438,0.528-2.462,1.853-2.522,3.356c-0.085,2.133,1.657,3.889,3.818,3.889c0.164,0,0.741,0,0.874,0h7.934 M33.064,59.09h0.36"></path><path fill="#472b29" d="M43.081,59.59h-3.54c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h3.54c1.831,0,3.321-1.453,3.321-3.239c0-1.524-1.108-2.857-2.636-3.17c-0.256-0.052-0.429-0.293-0.396-0.553c0.018-0.137,0.03-0.276,0.03-0.417c0-1.86-1.551-3.373-3.457-3.373c-1.092,0-2.098,0.491-2.76,1.348c-0.126,0.164-0.34,0.232-0.539,0.173c-0.198-0.059-0.339-0.234-0.355-0.44c-0.079-1.019-0.565-1.943-1.369-2.603c-0.828-0.679-1.884-0.982-2.973-0.853c-1.646,0.197-3.006,1.442-3.307,3.028c-0.094,0.495-0.091,0.989,0.009,1.471c0.045,0.219-0.06,0.441-0.258,0.544c-0.197,0.104-0.44,0.064-0.594-0.099c-0.428-0.451-1.009-0.7-1.635-0.7c-1.169,0-2.145,0.891-2.221,2.027c-0.01,0.145-0.082,0.279-0.198,0.366s-0.265,0.12-0.407,0.089c-0.638-0.139-1.242-0.097-1.845,0.124c-1.262,0.464-2.144,1.631-2.195,2.906c-0.035,0.875,0.283,1.708,0.895,2.345c0.635,0.661,1.496,1.024,2.423,1.024h8.807c0.276,0,0.5,0.224,0.5,0.5s-0.224,0.5-0.5,0.5h-8.807c-1.185,0-2.331-0.485-3.145-1.332c-0.802-0.835-1.219-1.928-1.173-3.078c0.067-1.674,1.212-3.203,2.849-3.805c0.611-0.225,1.241-0.305,1.88-0.245c0.344-1.395,1.629-2.424,3.135-2.424c0.493,0,0.977,0.113,1.414,0.323c0.009-0.242,0.037-0.484,0.083-0.726c0.381-2.009,2.096-3.586,4.17-3.834c1.361-0.161,2.685,0.218,3.726,1.072c0.748,0.614,1.278,1.41,1.546,2.302c0.791-0.648,1.786-1.007,2.842-1.007c2.458,0,4.457,1.962,4.457,4.373c0,0.034,0,0.068-0.001,0.102c1.764,0.555,3.003,2.188,3.003,4.038C47.402,57.688,45.463,59.59,43.081,59.59z M33.423,59.59h-0.36c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h0.36c0.276,0,0.5,0.224,0.5,0.5S33.7,59.59,33.423,59.59z"></path><path fill="#472b29" d="M41.374 53.787c-.018 0-.036-.002-.054-.006-.135-.03-.22-.164-.19-.298.037-.165.094-.327.17-.48.605-1.224 2.273-1.676 3.722-1.006.125.058.18.207.122.332-.059.125-.207.179-.332.122-1.205-.558-2.579-.209-3.063.774-.058.118-.102.241-.13.367C41.592 53.708 41.488 53.787 41.374 53.787zM36.215 59.59h-1.107c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.107c.276 0 .5.224.5.5S36.491 59.59 36.215 59.59z"></path><path fill="#fff" d="M83.503 43.397h-10.03c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h10.03c.276 0 .5.224.5.5S83.779 43.397 83.503 43.397zM86.384 43.397h-1.446c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.446c.276 0 .5.224.5.5S86.661 43.397 86.384 43.397zM90.438 43.397h-2.546c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2.546c.276 0 .5.224.5.5S90.715 43.397 90.438 43.397zM90.438 45.262h-9.616c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h9.616c.276 0 .5.224.5.5S90.715 45.262 90.438 45.262zM79.091 45.262h-.58c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h.58c.276 0 .5.224.5.5S79.367 45.262 79.091 45.262zM76.714 45.262h-1.456c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.456c.276 0 .5.224.5.5S76.99 45.262 76.714 45.262zM85.85 41.532h-5.027c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h5.027c.276 0 .5.224.5.5S86.126 41.532 85.85 41.532zM85.85 39.667h-1.257c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.257c.276 0 .5.224.5.5S86.126 39.667 85.85 39.667zM82.581 47.126h-1.759c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h1.759c.276 0 .5.224.5.5S82.857 47.126 82.581 47.126z"></path><path fill="#f1bc19" d="M55.362 38.25A11.172 11.172 0 1 0 55.362 60.593999999999994A11.172 11.172 0 1 0 55.362 38.25Z"></path><path fill="#77cbd2" d="M66.034,54.972c-0.499,0-0.98,0.076-1.44,0.207c-0.301-3.907-3.381-6.981-7.144-6.981c-2.169,0-4.109,1.025-5.424,2.639c-1.606-3.436-4.937-5.803-8.798-5.803c-5.32,0-9.642,4.488-9.809,10.087c-0.395-0.095-0.804-0.149-1.225-0.149c-3.061,0-5.542,2.631-5.542,5.877c0,3.246,2.481,5.877,5.542,5.877c0.356,0,33.483,0,33.839,0c3.061,0,5.542-2.631,5.542-5.877C71.576,57.603,69.095,54.972,66.034,54.972z"></path><path fill="#472b29" d="M66.034,67.226H32.195c-3.332,0-6.042-2.861-6.042-6.377c0-3.78,3.151-6.823,6.799-6.325c0.445-5.647,4.858-9.99,10.277-9.99c3.711,0,7.064,2.061,8.913,5.426c1.425-1.446,3.322-2.262,5.309-2.262c3.779,0,7.007,2.972,7.578,6.866c3.736-0.686,7.047,2.418,7.047,6.284C72.076,64.366,69.366,67.226,66.034,67.226z M32.195,55.472c-2.78,0-5.042,2.412-5.042,5.377c0,2.965,2.262,5.377,5.042,5.377h33.839c2.78,0,5.042-2.412,5.042-5.377c0-3.419-3.032-6.134-6.345-5.189c-0.144,0.039-0.3,0.015-0.422-0.071c-0.123-0.085-0.201-0.222-0.213-0.372c-0.282-3.656-3.201-6.519-6.645-6.519c-1.929,0-3.765,0.895-5.037,2.455c-0.109,0.133-0.282,0.2-0.449,0.18c-0.171-0.021-0.318-0.128-0.392-0.284c-1.59-3.402-4.788-5.515-8.345-5.515c-5.059,0-9.148,4.217-9.309,9.602c-0.005,0.15-0.077,0.291-0.196,0.382c-0.12,0.09-0.274,0.123-0.42,0.089C32.93,55.517,32.558,55.472,32.195,55.472z"></path><path fill="#472b29" d="M66.307 52.512c-.033 0-.067-.003-.101-.01-.271-.055-.445-.32-.389-.59.145-.705.218-1.433.218-2.163 0-5.917-4.813-10.73-10.73-10.73-3.452 0-6.715 1.678-8.729 4.487-.161.224-.473.276-.697.115-.225-.161-.276-.473-.115-.697 2.201-3.072 5.768-4.905 9.542-4.905 6.468 0 11.73 5.262 11.73 11.73 0 .797-.08 1.593-.238 2.364C66.748 52.349 66.539 52.512 66.307 52.512zM55.047 37.129c-.276 0-.5-.224-.5-.5v-3.975c0-.276.224-.5.5-.5s.5.224.5.5v3.975C55.547 36.906 55.323 37.129 55.047 37.129zM72.083 50.758h-3.407c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h3.407c.276 0 .5.224.5.5S72.359 50.758 72.083 50.758z"></path><path fill="#472b29" d="M64.433 41c-.128 0-.256-.049-.354-.146-.195-.195-.195-.512 0-.707l2.642-2.642c.195-.195.512-.195.707 0s.195.512 0 .707l-2.642 2.642C64.689 40.951 64.561 41 64.433 41zM45.526 40.874c-.128 0-.256-.049-.354-.146L42.5 38.055c-.195-.195-.195-.512 0-.707s.512-.195.707 0l2.672 2.672c.195.195.195.512 0 .707C45.782 40.825 45.654 40.874 45.526 40.874zM60.952 43.147c-.056 0-.113-.019-.159-.057-.187-.154-.38-.301-.579-.438-.113-.079-.142-.235-.063-.348.079-.114.234-.141.348-.063.21.146.415.301.612.464.106.088.122.246.034.352C61.095 43.116 61.024 43.147 60.952 43.147zM48.451 44.35c-.056 0-.112-.019-.159-.057-.106-.088-.122-.246-.034-.352 1.743-2.111 4.311-3.322 7.045-3.322 1.512 0 3.011.377 4.333 1.092.122.065.167.217.101.338-.065.123-.218.166-.338.102-1.25-.675-2.667-1.032-4.096-1.032-2.585 0-5.013 1.145-6.66 3.141C48.595 44.32 48.523 44.35 48.451 44.35zM53.627 64.421h-2.839c-.138 0-.25-.112-.25-.25s.112-.25.25-.25h2.839c.138 0 .25.112.25.25S53.765 64.421 53.627 64.421zM49.652 64.421h-.568c-.138 0-.25-.112-.25-.25s.112-.25.25-.25h.568c.138 0 .25.112.25.25S49.79 64.421 49.652 64.421zM47.948 64.421H31.48c-.138 0-.25-.112-.25-.25s.112-.25.25-.25h16.468c.138 0 .25.112.25.25S48.086 64.421 47.948 64.421z"></path><g><path fill="#fdfcef" d="M71.92,71.96c0,0,11.233,0,11.301,0c2.594,0,4.697-2.103,4.697-4.697c0-2.263-1.601-4.152-3.732-4.597c0.025-0.198,0.041-0.399,0.041-0.603c0-2.687-2.178-4.865-4.865-4.865c-1.586,0-2.991,0.763-3.879,1.938c-0.227-2.991-2.898-5.298-6.024-4.916c-2.285,0.28-4.176,2.046-4.596,4.31c-0.135,0.726-0.121,1.431,0.014,2.092c-0.613-0.66-1.485-1.075-2.456-1.075c-1.778,0-3.229,1.384-3.344,3.133c-0.807-0.179-1.685-0.167-2.61,0.18c-1.768,0.664-3.027,2.328-3.1,4.215c-0.105,2.68,2.037,4.885,4.693,4.885c0.202,0,0.911,0,1.074,0h9.753"></path><path fill="#472b29" d="M83.221,72.46H71.92c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h11.301c2.314,0,4.197-1.883,4.197-4.197c0-1.977-1.402-3.704-3.334-4.108c-0.255-0.053-0.427-0.293-0.394-0.552c0.022-0.177,0.038-0.357,0.038-0.541c0-2.407-1.958-4.365-4.365-4.365c-1.376,0-2.645,0.634-3.48,1.739c-0.125,0.167-0.337,0.239-0.54,0.178c-0.199-0.059-0.342-0.234-0.357-0.441c-0.1-1.318-0.746-2.556-1.771-3.397c-1.036-0.849-2.344-1.224-3.694-1.061c-2.072,0.254-3.785,1.86-4.165,3.905c-0.119,0.64-0.115,1.279,0.012,1.9c0.045,0.22-0.062,0.442-0.261,0.545c-0.198,0.102-0.442,0.06-0.595-0.104c-0.548-0.59-1.291-0.916-2.09-0.916c-1.497,0-2.747,1.171-2.845,2.666c-0.01,0.146-0.083,0.28-0.199,0.367c-0.117,0.087-0.268,0.119-0.408,0.088c-0.805-0.179-1.566-0.125-2.327,0.16c-1.596,0.599-2.712,2.113-2.777,3.766c-0.045,1.155,0.37,2.248,1.168,3.078c0.799,0.831,1.873,1.288,3.025,1.288h10.828c0.276,0,0.5,0.224,0.5,0.5s-0.224,0.5-0.5,0.5H58.06c-1.427,0-2.757-0.566-3.746-1.595c-0.989-1.028-1.502-2.381-1.447-3.81c0.08-2.05,1.456-3.924,3.424-4.664c0.767-0.288,1.56-0.386,2.362-0.29c0.371-1.751,1.932-3.055,3.768-3.055c0.649,0,1.286,0.167,1.848,0.476c0.001-0.36,0.036-0.722,0.103-1.084c0.459-2.47,2.526-4.409,5.027-4.715c1.616-0.201,3.2,0.256,4.449,1.28c0.959,0.787,1.643,1.862,1.957,3.048c0.973-0.87,2.224-1.354,3.558-1.354c2.958,0,5.365,2.407,5.365,5.365c0,0.075-0.002,0.15-0.006,0.224c2.167,0.654,3.696,2.679,3.696,4.976C88.418,70.129,86.087,72.46,83.221,72.46z"></path><path fill="#472b29" d="M58.894 68.254c-.006 0-.012 0-.017 0-.138-.009-.242-.128-.233-.266.103-1.53 1.538-2.695 3.188-2.578.128.009.257.025.385.049.268-.93 1.216-1.569 2.28-1.505.404.026.784.151 1.108.359 0-.012.001-.024.002-.036.116-1.729 1.734-3.043 3.606-2.913.138.009.242.128.233.266-.009.138-.132.244-.266.233-1.593-.105-2.976.993-3.074 2.447-.012.176-.004.354.022.528.017.109-.041.217-.141.264-.101.046-.22.023-.293-.061-.308-.348-.745-.557-1.23-.588-.907-.061-1.696.53-1.809 1.341-.01.071-.05.134-.11.174-.06.04-.135.051-.204.033-.18-.049-.363-.081-.543-.092-1.378-.083-2.573.857-2.657 2.112C59.134 68.153 59.024 68.254 58.894 68.254zM80.713 65.235c-.018 0-.037-.002-.055-.006-.135-.03-.219-.164-.188-.299.047-.208.118-.411.211-.604.754-1.563 2.796-2.163 4.548-1.334.125.059.179.208.12.333-.059.126-.21.177-.333.12-1.508-.712-3.25-.217-3.885 1.1-.077.159-.135.327-.174.498C80.93 65.156 80.827 65.235 80.713 65.235z"></path></g></svg>
                    </g>
                    <g class="pass-2 pass-animate" fill="none" fill-rule="evenodd">
                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                        width="200" height="200"
                        viewBox="0 0 100 100"
                        style=" fill:#000000;"><path fill="#fcba7f" d="M86.825,85.614H16.324c-2.062,0-3.75-1.687-3.75-3.75V31.364c0-2.062,1.687-3.75,3.75-3.75h70.501c2.062,0,3.75,1.687,3.75,3.75v50.501C90.574,83.927,88.887,85.614,86.825,85.614z"></path><path fill="#1f212b" d="M86.825,86.614H16.324c-2.618,0-4.749-2.131-4.749-4.75V31.364c0-2.619,2.131-4.75,4.749-4.75h70.501c2.619,0,4.75,2.131,4.75,4.75v50.501C91.575,84.483,89.444,86.614,86.825,86.614z M16.324,28.614c-1.516,0-2.749,1.233-2.749,2.75v50.501c0,1.516,1.233,2.75,2.749,2.75h70.501c1.517,0,2.75-1.233,2.75-2.75V31.364c0-1.516-1.233-2.75-2.75-2.75H16.324z"></path><path fill="#f69272" d="M47.575 84.614L47.575 28.614 55.575 28.614 55.575 30.155 55.575 84.614 47.575 84.614"></path><path fill="#1f212b" d="M91.075 57.614h-33c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h33c.276 0 .5.224.5.5S91.351 57.614 91.075 57.614zM45.075 57.614h-32c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h32c.276 0 .5.224.5.5S45.351 57.614 45.075 57.614z"></path><path fill="#fef6aa" d="M16.685 84.614h6.89v-.87l-.03-4.694c-.015-2.458-2.321-4.455-5.125-4.437l-4.845.031v7.218C13.575 83.656 14.892 84.614 16.685 84.614zM83.809 74.614h5.766v.87 5.057c-.015 2.458-.313 4.092-3.129 4.073l-6.915-.032-.16-6.245C79.371 76.545 82.008 74.614 83.809 74.614z"></path><path fill="#1f212b" d="M24.075,85.614c-0.274,0-0.498-0.222-0.5-0.497l0.109-5.894c-0.008-1.221-0.709-2.377-1.715-3.249c-1.025-0.887-2.441-1.522-3.848-1.501l-5.062,0.047c-0.002,0,0.001,0,0,0c-0.274,0-0.482-0.092-0.484-0.367c-0.002-0.276,0.221-0.501,0.496-0.503l5.072-0.036c0.017,0,0.032,0,0.048,0c1.664,0,3.236,0.569,4.433,1.605c1.227,1.062,1.907,2.48,1.917,3.994l0.034,5.898c0.002,0.276-0.221,0.501-0.497,0.503C24.077,85.614,24.076,85.614,24.075,85.614z"></path><path fill="#fefdef" d="M18.574 78.114A1.5 1.5 0 1 0 18.574 81.114A1.5 1.5 0 1 0 18.574 78.114Z" transform="translate(-.534 .127)"></path><path fill="#1f212b" d="M18.574 81.614c-.53 0-1.028-.205-1.405-.577-.38-.375-.591-.876-.594-1.411-.007-1.103.886-2.005 1.988-2.013.578.014 1.037.201 1.417.576.381.375.592.876.595 1.411.007 1.102-.885 2.005-1.987 2.013C18.583 81.614 18.579 81.614 18.574 81.614zM18.577 78.614c-.002 0-.005 0-.007 0-.553.003-.998.455-.995 1.007.002.267.107.518.297.705.188.186.438.288.702.288.002 0 .004 0 .007 0 .551-.004.997-.456.994-1.007-.002-.267-.107-.517-.297-.705C19.089 78.716 18.84 78.614 18.577 78.614zM47.075 82.614c-.276 0-.5-.224-.5-.5v-55c0-.276.224-.5.5-.5h8c.276 0 .5.224.5.5v2c0 .276-.224.5-.5.5s-.5-.224-.5-.5v-1.5h-7v54.5C47.575 82.39 47.351 82.614 47.075 82.614z"></path><path fill="#1f212b" d="M55.075,85.614h-7c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h6.5v-50.5c0-0.276,0.224-0.5,0.5-0.5s0.5,0.224,0.5,0.5v51C55.575,85.391,55.351,85.614,55.075,85.614z"></path><path fill="#fef6aa" d="M50.009,44.115l2.049-0.013c2.2-0.014,4.002,1.815,4.016,4.077l0.03,4.808c0.014,2.262-1.764,4.114-3.964,4.128l-2.05,0.013c-2.2,0.014-4.002-1.815-4.016-4.077l-0.03-4.808C46.03,45.981,47.81,44.129,50.009,44.115z M52.196,55.101c1.042-0.007,1.885-0.882,1.879-1.951l-0.032-5.109c-0.007-1.069-0.86-1.933-1.904-1.927l-2.185,0.014c-1.043,0.007-1.886,0.882-1.88,1.951l0.032,5.109c0.007,1.069,0.86,1.933,1.904,1.927L52.196,55.101z"></path><path fill="#1f212b" d="M50.065,57.628c-1.189,0-2.31-0.473-3.158-1.334c-0.852-0.864-1.324-2.015-1.332-3.24l0.109-4.784c-0.016-2.538,1.84-4.484,4.316-4.5l2.106-0.031c0.009,0-0.01,0,0,0c2.463,0,4.452,1.908,4.469,4.436l-0.109,4.814c0.008,1.225-0.312,2.376-1.152,3.251c-0.844,0.878-1.97,1.367-3.17,1.375l-2.05,0.013C50.084,57.628,50.075,57.628,50.065,57.628z M50.009,44.115l0.003,0.5c-1.924,0.012-3.479,1.639-3.468,3.625l0.03,4.809c0.006,0.962,0.377,1.866,1.044,2.544c0.665,0.674,1.508,1.041,2.469,1.036l2.05-0.013c0.928-0.006,1.8-0.385,2.455-1.067c0.658-0.686,1.018-1.594,1.012-2.557l-0.029-4.809c-0.013-1.987-1.542-3.594-3.514-3.58l-2.049,0.013L50.009,44.115z M49.998,55.615c-0.635,0-1.232-0.251-1.684-0.708c-0.452-0.458-0.704-1.067-0.708-1.715l-0.031-5.109c-0.004-0.648,0.239-1.26,0.686-1.724c0.45-0.467,1.05-0.726,1.69-0.73l2.185-0.014c1.275,0.004,2.398,1.079,2.407,2.423l0.032,5.109c0.009,1.344-1.057,2.445-2.376,2.454l0,0l-2.186,0.014C50.008,55.615,50.003,55.615,49.998,55.615z M52.196,55.101h0.01H52.196z M52.169,46.489C52.166,46.489,52.171,46.489,52.169,46.489h-2.25c-0.368,0.002-0.677,0.292-0.938,0.563c-0.265,0.274-0.565,0.66-0.562,1.046l0.047,5.047c0.003,0.386,0.292,0.787,0.56,1.058c0.263,0.266,0.607,0.412,0.973,0.412c0.003,0,0.007,0,0.01,0l2.186-0.014c0.767-0.005,1.527-0.663,1.522-1.456l-0.047-5.094C53.664,47.262,52.932,46.489,52.169,46.489z"></path><path fill="#fef6aa" d="M50.449,52.115h1.255c0.204,0,0.371,0.167,0.371,0.371l-0.003,6.258c0,0.204-0.167,0.371-0.371,0.371h-1.255c-0.204,0-0.371-0.167-0.371-0.371l0.003-6.258C50.078,52.282,50.245,52.115,50.449,52.115z"></path><path fill="#1f212b" d="M51.701,59.615h-1.255c-0.48,0-0.871-0.391-0.871-0.871l0.003-6.258c0-0.48,0.391-0.871,0.871-0.871h1.255c0.48,0,0.871,0.391,0.871,0.871l-0.004,6.259C52.571,59.224,52.18,59.615,51.701,59.615z M50.575,58.615h0.996l0.004-6h-0.997L50.575,58.615z M51.704,52.615h0.01H51.704z"></path><path fill="#b3b2c3" d="M41.719,27.114H32.43c-0.196,0-0.355-0.16-0.355-0.356l0.001-1.289c0-0.195,0.16-0.355,0.355-0.355h9.289c0.196,0,0.355,0.16,0.355,0.356l0,1.289C42.074,26.954,41.914,27.114,41.719,27.114z"></path><path fill="#1f212b" d="M41.719,27.614H32.43c-0.472,0-0.855-0.384-0.855-0.855l0.001-1.29c0-0.471,0.384-0.854,0.854-0.854h9.289c0.472,0,0.855,0.384,0.855,0.855l-0.001,1.29C42.574,27.23,42.19,27.614,41.719,27.614z M32.575,26.614h8.999l0.001-1h-8.999L32.575,26.614z"></path><path fill="#b3b2c3" d="M69.719,27.114H60.43c-0.196,0-0.355-0.16-0.355-0.356l0.001-1.289c0-0.195,0.16-0.355,0.355-0.355h9.289c0.196,0,0.355,0.16,0.355,0.356l-0.001,1.289C70.074,26.954,69.914,27.114,69.719,27.114z"></path><path fill="#1f212b" d="M69.719,27.614H60.43c-0.472,0-0.855-0.384-0.855-0.855l0.001-1.29c0-0.471,0.384-0.854,0.854-0.854h9.289c0.472,0,0.855,0.384,0.855,0.855l-0.001,1.29C70.574,27.23,70.19,27.614,69.719,27.614z M60.575,26.614h8.999l0.001-1h-8.999L60.575,26.614z"></path><path fill="#b3b2c3" d="M37.938,25.114c-0.438-3.843,1.888-8,4.369-8h17.091c2.487,0,4.326,4.636,4.452,8h3.214c-0.421-6.419-3.029-11-8.367-11H43.008c-3.99,0-8.025,4.593-8.445,11L37.938,25.114z"></path><path fill="#1f212b" d="M67.063 25.614h-3.214c-.269 0-.489-.213-.5-.481-.125-3.384-1.974-7.519-3.952-7.519H42.306c-.844 0-1.56.604-2.013 1.111-1.369 1.534-2.116 4.078-1.859 6.332.016.142-.029.283-.124.39-.095.106-.23.167-.373.167l-3.374 0c-.139 0-.271-.057-.365-.158-.094-.101-.143-.236-.134-.375.414-6.323 4.427-11.467 8.944-11.467h15.688c5.156 0 8.389 4.18 8.866 11.467.009.138-.04.273-.134.375C67.334 25.557 67.202 25.614 67.063 25.614zM64.321 24.614h2.202c-.346-3.968-1.856-10-7.827-10H43.008c-3.394 0-7.298 3.808-7.903 10l2.29 0c-.114-2.374.719-4.947 2.153-6.554.844-.945 1.797-1.445 2.758-1.445h17.091C62.142 16.614 64.042 21.123 64.321 24.614zM79.075 85.614c-.001 0-.002 0-.003 0-.276-.001-.499-.227-.497-.503l.033-5.9c.01-1.518.724-2.939 2.01-4.001 1.248-1.03 2.888-1.596 4.621-1.596.018 0 .035 0 .052 0l5.787.038c.276.002.499.227.497.503-.002.275-.226.497-.5.497-.001 0-.002 0-.003 0l-5.787-.038c-.016 0-.03 0-.046 0-1.501 0-2.915.484-3.984 1.367-1.054.87-1.766 1.979-1.773 3.195l-.024 5.955C79.455 85.407 79.349 85.614 79.075 85.614z"></path><path fill="#fefdef" d="M84.575 78.114A1.5 1.5 0 1 0 84.575 81.114A1.5 1.5 0 1 0 84.575 78.114Z" transform="rotate(-89.6 84.572 79.612)"></path><path fill="#1f212b" d="M84.577 81.614c-.005 0-.01 0-.015 0-1.103-.008-1.994-.911-1.987-2.014.003-.535.214-1.036.595-1.411.376-.372.874-.576 1.402-.576.005 0 .01 0 .015 0 1.103.008 1.995.911 1.988 2.013-.003.535-.214 1.036-.595 1.411C85.604 81.41 85.106 81.614 84.577 81.614zM83.575 79.606c-.003.552.443 1.004.995 1.008.288.014.519-.101.708-.288.189-.188.295-.438.297-.705.003-.552-.443-1.003-.996-1.007-.254-.02-.519.101-.707.287C83.682 79.089 83.577 79.339 83.575 79.606L83.575 79.606zM55.075 32.614c-.276 0-.5-.224-.5-.5v-2c0-.276.224-.5.5-.5s.5.224.5.5v2C55.575 32.391 55.351 32.614 55.075 32.614z"></path></svg>
                    </g>
                    <g class="passOK pass-animate" fill="none" fill-rule="evenodd">
                    <g transform="translate(11.5 51.5)">
                        <path stroke="#043491" stroke-linecap="round" stroke-width="3" d="M64.5 84H6a6 6 0 01-6-6V45.5h0V6.475a6 6 0 015.975-6L119 0h0l7 5.5 7-5.5h55a9 9 0 019 9v66a9 9 0 01-9 9h-55l-7-5.5-7 5.5H97.5"/>
                        <path fill="#C0D0F0" stroke="#043491" stroke-linecap="round" stroke-width="3" d="M22.24 19.5H0V6.475a6 6 0 015.975-6L118.802 0h0l7.017 5.5 7.018-5.5h55.14C192.96 0 197 4.03 197 9v10H44.356"/>
                        <path stroke="#043491" stroke-linecap="round" stroke-width="3" d="M150 49h6v6h-6zM168 49h6v6h-6zM150 67h6v6h-6z"/>
                        <path fill="#043491" d="M148.5 59.5h3v3h-3zM154.5 59.5h3v3h-3zM160.5 47.5h3v3h-3zM160.5 53.5h3v3h-3zM160.5 59.5h3v3h-3zM163.5 62.5h3v3h-3zM169.5 62.5h3v3h-3zM163.5 68.5h3v3h-3zM169.5 68.5h3v3h-3zM166.5 59.5h3v3h-3zM172.5 59.5h3v3h-3zM172.5 65.5h3v3h-3zM166.5 65.5h3v3h-3zM166.5 71.5h3v3h-3zM172.5 71.5h3v3h-3zM160.5 65.5h3v3h-3zM160.5 71.5h3v3h-3z"/>
                        <path stroke="#043491" stroke-width="3" d="M137.5 32h21M137.5 38H151M163.5 32H185M163.5 38H177"/>
                        <path fill="#043491" transform="translate(10.5 29.5)" d="M5.127 19.134l7.19-7.19L.334 4.751l2.054-2.054 14.98 4.195 6.25-6.25a1.933 1.933 0 012.74 0c.756.756.76 1.98 0 2.74l-6.25 6.25 4.195 14.98-2.054 2.054-7.191-11.985-7.19 7.191 1.369 4.11-.685.684L.333 18.45l.685-.685 4.109 1.37z"/>
                        <path fill="#043491" d="M10.5 65.5h17v3h-17zM45.5 65.5h17v3h-17zM80.5 65.5h17v3h-17zM10.5 71.5h28v3h-28zM45.5 71.5h28v3h-28zM80.5 71.5h28v3h-28zM10.5 8.5h42v3h-42zM46.5 30.5h63v3h-63zM46.5 46.5h39v3h-39zM46.5 36.5h47v3h-47zM46.5 52.5h25v3h-25zM74.5 52.5h30v3h-30zM55.5 8.5h6v3h-6zM64.5 8.5h30v3h-30z"/>
                        <path stroke="#043491" stroke-dasharray="7 6" stroke-width="3" d="M126 12.5v59"/>
                    </g>
                    </g>
                    <g class="check" stroke-linecap="round" stroke-width="3" transform="translate(156.5 25.5)">
                    <g transform="translate(156.5 25.5)">  
                        <circle cx="18" cy="18" r="18" fill="#2AC981" stroke="#003097"/>
                        <path stroke="#FFF" fill="#2AC981" stroke-linejoin="round" d="M9 19l6 6 12-12"/>
                    </g>
                    </g>
                </svg>
            </div>
        </div>
        <div class="login_input_wrap">
            <div class="input_box">
                    <h1>로그인</h1>
                <ul class="input_item">
                    <li><input type="text" id="user_id" placeholder="아이디를 입력해주세요"></li>
                    <li><input type="password" id="user_pw" placeholder="비밀번호를 입력해주세요"></li>
                    <ul class="input_itembtn">
                        <li>
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                        </label>
                        </li>
                        <li><button type="button" id="btnLogin">로그인</button></li>
                    </ul>
                    <li>OR</li><br>
                    <li>
                        <ul class="loginbtnWrap">
                            <li class="loginbtn" id="naverBtn"><img class="loginbtn_img" src="https://cdn-icons-png.flaticon.com/512/8142/8142645.png"></li>
                            <li class="loginbtn" id="kakaoBtn"><img class="loginbtn_img" src="https://cdn-icons-png.flaticon.com/512/4494/4494622.png"></li>
                            <li class="loginbtn"><a href="/member/airSignupView"><img class="loginbtn_img" src="https://cdn-icons-png.flaticon.com/512/6159/6159448.png"></a></li>
                        </ul>
                    </li>
                    <li>
                     
                        <ul class="findwrap">
                            <li><a href="#">아이디 찾기</a></li>
                            <br>
                            <li><a href="#">비밀번호 찾기</a></li>
                            <br>
                            <li><a href="airLanguageHome">HOME</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <form name="form">
		<input type="hidden" name="user_name"/>
		<input type="hidden" name="snsId"/>
		<input type="hidden" name="user_email"/>
		<input type="hidden" name="token"/>
	</form>
    </form>
   
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <script src="https://kit.fontawesome.com/86d85c3d85.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript">

        $("#btnLogin").on("click", function(){
    
            $.ajax({
                async: true 
                ,cache: false
                ,type: "post"
                /* ,dataType:"json" */
                ,url: "/member/loginProc"
                /* ,data : $("#formLogin").serialize() */
                ,data : { "user_id" : $("#user_id").val(), "user_pw" : $("#user_pw").val()}
                ,success: function(response) {
                    if(response.rt == "success") {
                            alert("로그인 완료");
                            location.href = "/airLanguageHome";
                    } else {
                        alert("회원없음");
                    }
                }
                ,error : function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        });
        
        
        //-----------------------------카카오로그인------------------------------------------------
        
        
        Kakao.init('5c3c7104a83d9002a7ea31b4428c735d'); // test 용
    	console.log(Kakao.isInitialized());
/*     	Kakao.init('ec2655da82c3779d622f0aff959060e6');
    	console.log(Kakao.isInitialized()); */
    	
    	$("#kakaoBtn").on("click", function() {
    		/* Kakao.Auth.authorize({
   		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
   		    }); */
    		
    		Kakao.Auth.login({
   		      success: function (response) {
   		        Kakao.API.request({
   		          url: '/v2/user/me',
   		          success: function (response) {
   		        	  
   		        	  var accessToken = Kakao.Auth.getAccessToken();
   		        	  Kakao.Auth.setAccessToken(accessToken);

   		        	  var account = response.kakao_account;
   		        	  
   		        	  console.log(response)
   		        	  console.log("email : " + account.email);
   		        	  console.log("name : " + account.name);
   		        	  console.log("nickname : " + account.profile.nickname);
  	        	  
	  	        	  $("input[name=snsId]").val("카카오로그인");
	  	        	  $("input[name=user_name]").val(account.profile.nickname);
	  	        	  $("input[name=user_email]").val(account.email);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
	  	       
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {"user_name": $("input[name=user_name]").val(), "snsId": $("input[name=snsId]").val(),  "user_email": $("input[name=user_email]").val(), "token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/airLanguageHome";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
   		          },
   		          fail: function (error) {
   		            console.log(error)
   		          },
   		        })
   		      },
   		      fail: function (error) {
   		        console.log(error)
   		      },
   		    })
		});
        
    	//네이버로그인---------------------------------------------------------------------
    	/* naver login test s */
   		
   		/* var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "b8EhDTV3tvvAE_gRRBoJ",
				callbackUrl: "http://localhost:8080/userLogin",
				isPopup: false,
				loginButton: {color: "green", type: 3, height: 70} 
			}
		); */
		   $("#naverBtn").on("click", function() {
				var naverLogin = new naver.LoginWithNaverId(
						{
							clientId: "aFywpcUOCSvdpR7BZ5St",
							callbackUrl: "http://localhost:8080/airLogin",
							isPopup: true
						}
					);
					
					naverLogin.init();
					
					naverLogin.getLoginStatus(function (status) {
						
						if(!status)
							naverLogin.authorize();
		                else
		                    setLoginStatus();  //하늘님 메소드 실행 -> Ajax
					});

	   		function setLoginStatus() {

				
				$.ajax({
					async: true
					,cache: false
					,type:"POST"
					,url: "/member/naverLoginProc"
					,data: {"user_name": naverLogin.user.name, "snsId": "네이버로그인", "user_email": naverLogin.user.email}
				,success : function(response) {
						if (response.rt == "fail") {
							alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
							return false;
						} else {
							window.location.href = "/airLanguageHome";
						}
					},
					error : function(jqXHR, status, error) {
						alert("알 수 없는 에러 [ " + error + " ]");
					}
				});
			}
		   });
		
		
		
		
		
		
		
		
		

    </script>    
</body>
</html>