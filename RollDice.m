function RolledNum = RollDice(app)
%UNTITLED 此处提供此函数的摘要
%   此处提供详细说明
app.ROLLDICEButton.Enable = 'off';
app.DICEImage.ImageSource = 'rolling dice.gif';
[y, Fs] = audioread('RollSound.m4a');
soundPlayer=audioplayer(y,Fs);
play(soundPlayer);
pause(2);
RolledNum = randi(6);
switch(RolledNum)
    case 1
        app.DICEImage.ImageSource = 'dice-1.svg';
    case 2
        app.DICEImage.ImageSource = 'dice-2.svg';
    case 3
        app.DICEImage.ImageSource = 'dice-3.svg';
    case 4
        app.DICEImage.ImageSource = 'dice-4.svg';
    case 5
        app.DICEImage.ImageSource = 'dice-5.svg';
    case 6
        app.DICEImage.ImageSource = 'dice-6.svg';
end
app.ROLLDICEButton.Enable = 'on';
end