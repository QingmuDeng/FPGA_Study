<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="B" />
        <signal name="A" />
        <signal name="SEL" />
        <signal name="Q" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="SEL" />
        <port polarity="Output" name="Q" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="SEL" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="896" name="XLXI_2" orien="R0" />
        <instance x="1392" y="1248" name="XLXI_3" orien="R0" />
        <instance x="960" y="1216" name="XLXI_4" orien="R0" />
        <instance x="624" y="1216" name="XLXI_5" orien="R0" />
        <instance x="1856" y="1088" name="XLXI_6" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1392" y1="1184" y2="1184" x1="1184" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1776" y1="800" y2="800" x1="1664" />
            <wire x2="1776" y1="800" y2="960" x1="1776" />
            <wire x2="1856" y1="960" y2="960" x1="1776" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1744" y1="1152" y2="1152" x1="1648" />
            <wire x2="1744" y1="1024" y2="1152" x1="1744" />
            <wire x2="1856" y1="1024" y2="1024" x1="1744" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="896" y1="1184" y2="1184" x1="848" />
            <wire x2="960" y1="1184" y2="1184" x1="896" />
            <wire x2="1408" y1="832" y2="832" x1="896" />
            <wire x2="896" y1="832" y2="1184" x1="896" />
        </branch>
        <branch name="B">
            <wire x2="1392" y1="1120" y2="1120" x1="624" />
        </branch>
        <branch name="A">
            <wire x2="1408" y1="768" y2="768" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="768" name="A" orien="R180" />
        <iomarker fontsize="28" x="624" y="1120" name="B" orien="R180" />
        <branch name="SEL">
            <wire x2="624" y1="1184" y2="1184" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1184" name="SEL" orien="R180" />
        <branch name="Q">
            <wire x2="2144" y1="992" y2="992" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="992" name="Q" orien="R0" />
    </sheet>
</drawing>