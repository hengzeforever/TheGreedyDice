classdef app1_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure         matlab.ui.Figure
        PLAYER2Label     matlab.ui.control.Label
        PLAYER1Label     matlab.ui.control.Label
        BANKSCOREButton  matlab.ui.control.Button
        PLAYER1Image     matlab.ui.control.Image
        PLAYER2Image     matlab.ui.control.Image
        DICEImage        matlab.ui.control.Image
        ROLLDICEButton   matlab.ui.control.Button
        UITable          matlab.ui.control.Table
        BACKGROUNDImage  matlab.ui.control.Image
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: ROLLDICEButton
        function ROLLDICEButtonPushed(app, event)
            RolledNum = RollDice(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.8196 0.1059 0.1059];
            app.UIFigure.Position = [100 100 633 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create BACKGROUNDImage
            app.BACKGROUNDImage = uiimage(app.UIFigure);
            app.BACKGROUNDImage.Position = [-106 -127 869 736];
            app.BACKGROUNDImage.ImageSource = 'table.jpg';

            % Create UITable
            app.UITable = uitable(app.UIFigure);
            app.UITable.ColumnName = {'PLAYER 1'; 'PLAYER 2'};
            app.UITable.RowName = {'TOTAL POINTS'};
            app.UITable.Position = [249 147 162 67];

            % Create ROLLDICEButton
            app.ROLLDICEButton = uibutton(app.UIFigure, 'push');
            app.ROLLDICEButton.ButtonPushedFcn = createCallbackFcn(app, @ROLLDICEButtonPushed, true);
            app.ROLLDICEButton.WordWrap = 'on';
            app.ROLLDICEButton.BackgroundColor = [0.6353 0.0784 0.1843];
            app.ROLLDICEButton.FontSize = 20;
            app.ROLLDICEButton.FontWeight = 'bold';
            app.ROLLDICEButton.FontColor = [1 1 1];
            app.ROLLDICEButton.Position = [76 252 173 40];
            app.ROLLDICEButton.Text = {'ROLL DICE'; ''};

            % Create DICEImage
            app.DICEImage = uiimage(app.UIFigure);
            app.DICEImage.Position = [286 237 89 71];
            app.DICEImage.ImageSource = 'dice-1.svg';

            % Create PLAYER2Image
            app.PLAYER2Image = uiimage(app.UIFigure);
            app.PLAYER2Image.Position = [274 368 109 94];
            app.PLAYER2Image.ImageSource = 'boy.png';

            % Create PLAYER1Image
            app.PLAYER1Image = uiimage(app.UIFigure);
            app.PLAYER1Image.Position = [275 8 107 112];
            app.PLAYER1Image.ImageSource = 'girl.png';

            % Create BANKSCOREButton
            app.BANKSCOREButton = uibutton(app.UIFigure, 'push');
            app.BANKSCOREButton.BackgroundColor = [0.6353 0.0784 0.1843];
            app.BANKSCOREButton.FontSize = 20;
            app.BANKSCOREButton.FontWeight = 'bold';
            app.BANKSCOREButton.FontColor = [1 1 1];
            app.BANKSCOREButton.Position = [409 252 173 40];
            app.BANKSCOREButton.Text = 'BANK SCORE';

            % Create PLAYER1Label
            app.PLAYER1Label = uilabel(app.UIFigure);
            app.PLAYER1Label.FontSize = 20;
            app.PLAYER1Label.FontWeight = 'bold';
            app.PLAYER1Label.FontColor = [0.6353 0.0784 0.1843];
            app.PLAYER1Label.Position = [283 111 96 27];
            app.PLAYER1Label.Text = {'PLAYER1'; ''};

            % Create PLAYER2Label
            app.PLAYER2Label = uilabel(app.UIFigure);
            app.PLAYER2Label.FontSize = 20;
            app.PLAYER2Label.FontWeight = 'bold';
            app.PLAYER2Label.Position = [282 334 96 27];
            app.PLAYER2Label.Text = 'PLAYER2';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app1_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end