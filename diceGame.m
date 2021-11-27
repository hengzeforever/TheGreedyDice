classdef diceGame < handle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    properties (Access = private)
        playerList;
        currentPlayerId = 1;
        currentPlayer;
        lastRolledNum;
        currentTurnPoints;
        endGameFlag = false;
    end

    methods
        function obj = diceGame()
            %UNTITLED2 Construct an instance of this class
            %   Detailed explanation goes here
        end

        function playGame(obj)
            addPlayers(obj);
            obj.currentPlayer = obj.playerList(obj.currentPlayerId);
            while ~obj.endGameFlag
                
                changeTurn(obj);
            end
        end

        function changeTurn(obj)
            obj.currentPlayerId = mod(obj.currentPlayerId + 1, size(obj.playerList,2));
        end

        function addPlayers(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            obj.playerList = [player('PLAYER1'),player('PLAYER2')];
        end
    end
end