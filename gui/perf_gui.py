import tkinter as tk
import tkinter.ttk as ttk
import numpy as np
import random
import matplotlib
matplotlib.use("TkAgg")
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import socket
import _thread
from timeit import default_timer as timer


# enable test buttons and disable network
test = 0

start_time_ht = 0
start_time_net1 = 0
start_time_net2 = 0
start_time_hf1 = 0
email_length1 = 69
start_time_hf2 = 0
email_length2 = 69

def listen_tcp(connection):
    global start_time_ht, start_time_net1, start_time_net2
    connection.listen(1)
    connection, addr = connection.accept()
    while True:
        data = connection.recv(2)
        if not data:
            continue
        if data[0] == 0:
            start_time_ht = timer()
        elif data[0] == 1:
            refresh_ht_graph(None, (timer() - start_time_ht)*1000000)
        elif data[0] == 2:
            if data[1] == 0:
                start_time_net1 = timer()
            if data[1] == 1:
                start_time_net2 = timer()

def start_tcp():
    host = "1.1.26.1"
    port = 50007
    connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    connection.bind((host, port))
    _thread.start_new_thread(listen_tcp, (connection,))

def listen_tcp1(connection):
    global start_time_hf1, email_length1
    connection.listen(1)
    connection, addr = connection.accept()
    while True:
        data = connection.recv(1024)
        if not data:
            continue
        if data[0] == 1:
            start_time_hf1 = timer()
        elif data[0] == 2:
            set_email1(None, str(data[1:].decode("utf-8")))
            advance_email_progress1(None, True)
        elif data[0] == 3:
            set_spam1(None, data[1])
        elif data[0] == 4:
            refresh_net_graph(None, (timer() - start_time_net1)*1000)
            advance_email_progress1(None)
        elif data[0] == 5:
            refresh_hf_graph1(None, (timer() - start_time_hf1)*1000)
            email_length1 = data[1]

def start_tcp1():
    host = "1.1.26.1"
    port = 50008
    connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    connection.bind((host, port))
    _thread.start_new_thread(listen_tcp1, (connection,))

def listen_tcp2(connection):
    global start_time_hf2, email_length2
    connection.listen(1)
    connection, addr = connection.accept()
    while True:
        data = connection.recv(1024)
        if not data:
            continue
        if data[0] == 1:
            start_time_hf2 = timer()
        elif data[0] == 2:
            set_email2(None, str(data[1:].decode("utf-8")))
            advance_email_progress2(None, True)
        elif data[0] == 3:
            set_spam2(None, data[1])
        elif data[0] == 4:
            refresh_net_graph(None, (timer() - start_time_net2)*1000)
            advance_email_progress2(None)
        elif data[0] == 5:
            refresh_hf_graph2(None, (timer() - start_time_hf2)*1000)
            email_length2 = data[1]

def start_tcp2():
    host = "1.1.26.1"
    port = 50009
    connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    connection.bind((host, port))
    _thread.start_new_thread(listen_tcp2, (connection,))

values_ht = np.array([0])
def refresh_ht_graph(event, value=-1):
    global values_ht
    if value == -1:
        value = random.random()
    values_ht = np.append(values_ht, [value])
    l_ht.set_xdata(list(range(len(values_ht))))
    l_ht.set_ydata(values_ht)
    a_ht.set_xlim(0, len(values_ht))
    a_ht.set_ylim(0, np.max(values_ht)*2)
    canvas_ht.draw()

values_net = np.array([0])
def refresh_net_graph(event, value=-1):
    global values_net
    if value == -1:
        value = random.random()
    values_net = np.append(values_net, [value])
    l_net.set_xdata(list(range(len(values_net))))
    l_net.set_ydata(values_net)
    a_net.set_xlim(0, len(values_net))
    a_net.set_ylim(0, np.max(values_net)*2)
    canvas_net.draw()

def advance_email_progress1(event, finish=False):
    if finish:
        email_progress1["value"] = 100
        email_progress_label1["text"] = "Progress: Done!"
        return
    if email_progress1["value"] < 100:
        email_progress1["value"] += 100/email_length1
        if email_progress1["value"] < 100:
            email_progress_label1["text"] = "Progress: {0:.1f}%".format(email_progress1["value"])
        else:
            email_progress_label1["text"] = "Progress: Done!"

def set_email1(event, text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."):
    global email_length1
    email_text_label1["text"] = text.ljust(500)
    email_length1 = len(text.split())

values_hf1 = np.array([0])
def refresh_hf_graph1(event, value=-1):
    global values_hf1
    if value == -1:
        value = random.random()
    values_hf1 = np.append(values_hf1, [value])
    l_hf1.set_xdata(list(range(len(values_hf1))))
    l_hf1.set_ydata(values_hf1)
    a_hf1.set_xlim(0, len(values_hf1))
    a_hf1.set_ylim(0, np.max(values_hf1)*2)
    canvas_hf1.draw()

def set_spam1(event, flag):
    if flag == 0:
        spam_label1["text"] = "Spam detected"
    elif flag == 1:
        spam_label1["text"] = "Ham detected"

def advance_email_progress2(event, finish=False):
    if finish:
        email_progress2["value"] = 100
        email_progress_label2["text"] = "Progress: Done!"
        return
    if email_progress2["value"] < 100:
        email_progress2["value"] += 100/email_length2
        if email_progress2["value"] < 100:
            email_progress_label2["text"] = "Progress: {0:.1f}%".format(email_progress2["value"])
        else:
            email_progress_label2["text"] = "Progress: Done!"

def set_email2(event, text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."):
    global email_length2
    email_text_label2["text"] = text.ljust(500)
    email_length2 = len(text.split())

values_hf2 = np.array([0])
def refresh_hf_graph2(event, value=-1):
    global values_hf2
    if value == -1:
        value = random.random()
    values_hf2 = np.append(values_hf2, [value])
    l_hf2.set_xdata(list(range(len(values_hf2))))
    l_hf2.set_ydata(values_hf2)
    a_hf2.set_xlim(0, len(values_hf2))
    a_hf2.set_ylim(0, np.max(values_hf2)*2)
    canvas_hf2.draw()

def set_spam2(event, flag):
    if flag == 0:
        spam_label2["text"] = "Spam detected"
    elif flag == 1:
        spam_label2["text"] = "Ham detected"

window = tk.Tk()
server_frame = tk.Frame()
server_frame.grid(row=0, column=0, sticky="n")
client_frame1 = tk.Frame()
client_frame1.grid(row=0, column=1, sticky="n")
client_frame2 = tk.Frame()
client_frame2.grid(row=0, column=2, sticky="n")

server_label = tk.Label(master=server_frame, text="Server", font=("TkDefaultFont", 18), relief=tk.RAISED, borderwidth=1)
server_label.pack(fill=tk.BOTH, padx=5, pady=5)

f_ht = Figure()
a_ht = f_ht.add_subplot(111)
a_ht.set_title("Hash table latency (us)")
a_ht.set_xlim(0, 1)
a_ht.set_ylim(0, 1000)
a_ht.minorticks_on()
a_ht.grid(axis="y", which="major", linestyle="-")
a_ht.grid(axis="y", which="minor", linestyle="--")
a_ht.set_xticklabels([])
a_ht.set_xticks([])
l_ht, = a_ht.plot(list(range(len(values_ht))), values_ht)

canvas_ht = FigureCanvasTkAgg(f_ht, master=server_frame)
canvas_ht.draw()
canvas_ht.get_tk_widget().pack(fill=tk.BOTH, expand=True)

f_net = Figure()
a_net = f_net.add_subplot(111)
a_net.set_title("Network latency (ms)")
a_net.set_xlim(0, 1)
a_net.set_ylim(0, 1000)
a_net.minorticks_on()
a_net.grid(axis="y", which="major", linestyle="-")
a_net.grid(axis="y", which="minor", linestyle="--")
a_net.set_xticklabels([])
a_net.set_xticks([])
l_net, = a_net.plot(list(range(len(values_net))), values_net)

canvas_net = FigureCanvasTkAgg(f_net, master=server_frame)
canvas_net.draw()
canvas_net.get_tk_widget().pack(fill=tk.BOTH, expand=True)

client_label1 = tk.Label(master=client_frame1, text="Client 1", font=("TkDefaultFont", 18), relief=tk.RAISED, borderwidth=1)
client_label1.pack(fill=tk.BOTH, padx=5, pady=5)

f_hf1 = Figure()
a_hf1 = f_hf1.add_subplot(111)
a_hf1.set_title("Hash function latency (ms)")
a_hf1.set_xlim(0, 1)
a_hf1.set_ylim(0, 20)
a_hf1.minorticks_on()
a_hf1.grid(axis="y", which="major", linestyle="-")
a_hf1.grid(axis="y", which="minor", linestyle="--")
a_hf1.set_xticklabels([])
a_hf1.set_xticks([])
l_hf1, = a_hf1.plot(list(range(len(values_hf1))), values_hf1)

canvas_hf1 = FigureCanvasTkAgg(f_hf1, master=client_frame1)
canvas_hf1.draw()
canvas_hf1.get_tk_widget().pack(fill=tk.BOTH, expand=True)

email_label1 = tk.Label(master=client_frame1, text="Processed email", font=("TkDefaultFont", 13))
email_label1.pack(fill=tk.BOTH, padx=5, pady=5)

email_text_label1 = tk.Label(master=client_frame1, text=" "*500, relief=tk.SUNKEN, borderwidth=1, bg="white", wraplength=500)
email_text_label1.pack(padx=5, pady=5)

email_progress1 = ttk.Progressbar(client_frame1, orient="horizontal", mode="determinate", length=500)
email_progress1.pack(padx=5, pady=5)

email_progress_label1 = tk.Label(master=client_frame1, text="Progress: 0.0%")
email_progress_label1.pack(padx=5, pady=5)

spam_label1 = tk.Label(master=client_frame1, text="", font=("TkDefaultFont", 14))
spam_label1.pack(padx=5, pady=5)

client_label2 = tk.Label(master=client_frame2, text="Client 2", font=("TkDefaultFont", 18), relief=tk.RAISED, borderwidth=1)
client_label2.pack(fill=tk.BOTH, padx=5, pady=5)

f_hf2 = Figure()
a_hf2 = f_hf2.add_subplot(111)
a_hf2.set_title("Hash function latency (ms)")
a_hf2.set_xlim(0, 1)
a_hf2.set_ylim(0, 20)
a_hf2.minorticks_on()
a_hf2.grid(axis="y", which="major", linestyle="-")
a_hf2.grid(axis="y", which="minor", linestyle="--")
a_hf2.set_xticklabels([])
a_hf2.set_xticks([])
l_hf2, = a_hf2.plot(list(range(len(values_hf2))), values_hf2)

canvas_hf2 = FigureCanvasTkAgg(f_hf2, master=client_frame2)
canvas_hf2.draw()
canvas_hf2.get_tk_widget().pack(fill=tk.BOTH, expand=True)

email_label2 = tk.Label(master=client_frame2, text="Processed email", font=("TkDefaultFont", 13))
email_label2.pack(fill=tk.BOTH, padx=5, pady=5)

email_text_label2 = tk.Label(master=client_frame2, text=" "*500, relief=tk.SUNKEN, borderwidth=1, bg="white", wraplength=500)
email_text_label2.pack(padx=5, pady=5)

email_progress2 = ttk.Progressbar(client_frame2, orient="horizontal", mode="determinate", length=500)
email_progress2.pack(padx=5, pady=5)

email_progress_label2 = tk.Label(master=client_frame2, text="Progress: 0.0%")
email_progress_label2.pack(padx=5, pady=5)

spam_label2 = tk.Label(master=client_frame2, text="", font=("TkDefaultFont", 14))
spam_label2.pack(padx=5, pady=5)

if test:
    refresh_ht_graph_button = tk.Button(master=server_frame, text="Refresh hash table graph")
    refresh_ht_graph_button.pack(padx=5, pady=5)
    refresh_ht_graph_button.bind("<Button-1>", refresh_ht_graph)
    refresh_net_graph_button = tk.Button(master=server_frame, text="Refresh network graph")
    refresh_net_graph_button.pack(padx=5, pady=5)
    refresh_net_graph_button.bind("<Button-1>", refresh_net_graph)
    refresh_email1 = tk.Button(master=client_frame1, text="Refresh email")
    refresh_email1.pack(padx=5, pady=5)
    refresh_email1.bind("<Button-1>", set_email1)
    refresh_progress_button1 = tk.Button(master=client_frame1, text="Refresh progress")
    refresh_progress_button1.pack(padx=5, pady=5)
    refresh_progress_button1.bind("<Button-1>", advance_email_progress1)
    refresh_hf_graph_button1 = tk.Button(master=client_frame1, text="Refresh graph")
    refresh_hf_graph_button1.pack(padx=5, pady=5)
    refresh_hf_graph_button1.bind("<Button-1>", refresh_hf_graph1)
    refresh_email2 = tk.Button(master=client_frame2, text="Refresh email")
    refresh_email2.pack(padx=5, pady=5)
    refresh_email2.bind("<Button-1>", set_email2)
    refresh_progress_button2 = tk.Button(master=client_frame2, text="Refresh progress")
    refresh_progress_button2.pack(padx=5, pady=5)
    refresh_progress_button2.bind("<Button-1>", advance_email_progress2)
    refresh_hf_graph_button2 = tk.Button(master=client_frame2, text="Refresh graph")
    refresh_hf_graph_button2.pack(padx=5, pady=5)
    refresh_hf_graph_button2.bind("<Button-1>", refresh_hf_graph2)

if not test:
    start_tcp()
    start_tcp1()
    start_tcp2()

window.mainloop()
