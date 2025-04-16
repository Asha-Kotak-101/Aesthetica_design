<%@ Page Title="Room Measurement" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="RoomMeasurement.aspx.cs" Inherits="Aesthetica_design.User.RoomMeasurement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .room-measurement-container {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            padding: 40px;
            align-items: center;
            justify-content: center;
        }

        .room-image {
            flex: 1;
            min-width: 300px;
        }

        .room-image img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .form-box {
            flex: 1;
            min-width: 300px;
            background: #f9f9f9;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }

        .form-box h3 {
            margin-bottom: 25px;
            font-size: 20px;
            font-weight: 600;
            color: #333;
        }

        .form-box input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }

        .form-box button {
            width: 100%;
            padding: 14px;
            font-size: 16px;
            background-color: #2c2c44;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .form-box button:hover {
            background-color: #1f1f33;
        }

        .result {
            margin-top: 20px;
            font-size: 18px;
            color: #007bff;
            font-weight: 500;
        }
    </style>

    <div class="room-measurement-container">
        <!-- Left: Image -->
        <div class="room-image">
            <img src="../Assets-1/Images/image 28.png" alt="Room Example" />
        </div>

        <!-- Right: Room Measurement Form -->
        <div class="form-box">
            <h3>Room Dimensions</h3>

            <input type="text" id="lengthInput" placeholder="Length (ft)" />
            <input type="text" id="widthInput" placeholder="Width (ft)" />
            <input type="text" id="heightInput" placeholder="Height (ft)" />

            <button type="button" onclick="calculateVolume()">Calculate Space</button>


            <div class="result" id="volumeResult"></div>
        </div>
    </div>

    <script>
        function calculateVolume() {
            const length = parseFloat(document.getElementById("lengthInput").value) || 0;
            const width = parseFloat(document.getElementById("widthInput").value) || 0;
            const height = parseFloat(document.getElementById("heightInput").value) || 0;

            const volume = length * width * height;

            const resultText = volume > 0
                ? `Total Volume: ${volume.toLocaleString()} cubic feet`
                : "Please enter valid dimensions.";

            document.getElementById("volumeResult").textContent = resultText;
        }
    </script>
</asp:Content>
