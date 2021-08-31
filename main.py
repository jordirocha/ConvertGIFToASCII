#!/usr/bin/python3

import os

import PySimpleGUI as sG


class GUI:
    layout = None
    window = None

    def __init__(self):
        self.set_gui()
        self.display()

    def display(self):
        while True:
            event, values = self.window.read()
            if event == sG.WINDOW_CLOSED or event == 'Quit':
                break
            if event in "Convert":
                self.convert_to_ascii_gif()

    def convert_to_ascii_gif(self):
        if self.layout[0][1].get() == "":
            sG.popup_error("Inputs requirements are empty.", title="ERROR")
        else:
            os.system("sh scripts/splitToFrames.sh '" + self.layout[0][1].get() + "'")
            os.system("sh scripts/resultToGif.sh")

    def set_gui(self):
        sG.theme('BlueMono')
        self.layout = [
            [sG.Text("GIF file:"), sG.In(enable_events=True, key='-FILE-'),
             sG.FileBrowse(file_types=(("GIF files", "*.gif"),))],
            [sG.Button('Convert')]]
        self.window = sG.Window('Converter to ASCII GIF', icon="img/icon.png").layout(self.layout)


if __name__ == '__main__':
    program = GUI()
