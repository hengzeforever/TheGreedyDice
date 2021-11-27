classdef player < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties (Access = private)
        name;
        totalPoints = 0;
    end

    methods
        function obj = player(inputName)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            obj.name = inputName;
        end

        function showPoints(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            disp(obj.totalPoints);
        end

        function updatePoint(obj,newPoint)
            obj.totalPoints = newPoint;
        end

    end
end