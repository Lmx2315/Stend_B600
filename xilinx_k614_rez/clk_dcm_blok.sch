<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="T_5MIN" />
        <signal name="T_5MIN_OUT" />
        <signal name="F5MHZ_in" />
        <signal name="f5MHZ_out" />
        <signal name="INVF64MHz" />
        <signal name="F21MHz" />
        <signal name="XLXN_160" />
        <signal name="F20MHz_dcm" />
        <signal name="XLXN_178" />
        <signal name="F64MHz_in" />
        <signal name="XLXN_182" />
        <signal name="reset_DCM" />
        <signal name="f20MHz_in" />
        <signal name="f20MHz" />
        <signal name="XLXN_183" />
        <signal name="F64Mhz" />
        <port polarity="Input" name="T_5MIN" />
        <port polarity="Output" name="T_5MIN_OUT" />
        <port polarity="Input" name="F5MHZ_in" />
        <port polarity="Output" name="f5MHZ_out" />
        <port polarity="Output" name="F21MHz" />
        <port polarity="Output" name="F20MHz_dcm" />
        <port polarity="Input" name="F64MHz_in" />
        <port polarity="Input" name="reset_DCM" />
        <port polarity="Input" name="f20MHz_in" />
        <port polarity="Output" name="f20MHz" />
        <port polarity="Output" name="F64Mhz" />
        <blockdef name="ibufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="dcm2">
            <timestamp>2015-6-26T13:52:0</timestamp>
            <line x2="0" y1="1632" y2="1632" x1="64" />
            <line x2="464" y1="1248" y2="1248" x1="400" />
            <line x2="464" y1="352" y2="352" x1="400" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="336" x="64" y="-76" height="1744" />
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
        <block symbolname="ibufg" name="XLXI_46">
            <blockpin signalname="T_5MIN" name="I" />
            <blockpin signalname="T_5MIN_OUT" name="O" />
        </block>
        <block symbolname="ibufg" name="XLXI_64">
            <blockpin signalname="F5MHZ_in" name="I" />
            <blockpin signalname="f5MHZ_out" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_101">
            <blockpin signalname="XLXN_160" name="I" />
            <blockpin signalname="F21MHz" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_69">
            <blockpin signalname="XLXN_178" name="I" />
            <blockpin signalname="F20MHz_dcm" name="O" />
        </block>
        <block symbolname="ibufg" name="XLXI_102">
            <blockpin signalname="F64MHz_in" name="I" />
            <blockpin signalname="INVF64MHz" name="O" />
        </block>
        <block symbolname="dcm2" name="XLXI_103">
            <blockpin signalname="INVF64MHz" name="CLKIN_IN" />
            <blockpin signalname="XLXN_182" name="RST_IN" />
            <blockpin signalname="XLXN_160" name="CLKDV_OUT" />
            <blockpin signalname="XLXN_178" name="CLKFX_OUT" />
            <blockpin signalname="XLXN_183" name="CLK0_OUT" />
        </block>
        <block symbolname="inv" name="XLXI_106">
            <blockpin signalname="reset_DCM" name="I" />
            <blockpin signalname="XLXN_182" name="O" />
        </block>
        <block symbolname="ibufg" name="XLXI_80">
            <blockpin signalname="f20MHz_in" name="I" />
            <blockpin signalname="f20MHz" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_107">
            <blockpin signalname="XLXN_183" name="I" />
            <blockpin signalname="F64Mhz" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="T_5MIN">
            <wire x2="512" y1="1360" y2="1360" x1="480" />
        </branch>
        <branch name="T_5MIN_OUT">
            <wire x2="768" y1="1360" y2="1360" x1="736" />
        </branch>
        <instance x="512" y="1392" name="XLXI_46" orien="R0" />
        <iomarker fontsize="28" x="480" y="1360" name="T_5MIN" orien="R180" />
        <iomarker fontsize="28" x="768" y="1360" name="T_5MIN_OUT" orien="R0" />
        <instance x="512" y="1504" name="XLXI_64" orien="R0" />
        <branch name="F5MHZ_in">
            <wire x2="512" y1="1472" y2="1472" x1="432" />
        </branch>
        <branch name="f5MHZ_out">
            <wire x2="864" y1="1472" y2="1472" x1="736" />
        </branch>
        <iomarker fontsize="28" x="432" y="1472" name="F5MHZ_in" orien="R180" />
        <iomarker fontsize="28" x="864" y="1472" name="f5MHZ_out" orien="R0" />
        <branch name="INVF64MHz">
            <wire x2="1216" y1="704" y2="704" x1="912" />
            <wire x2="1232" y1="704" y2="704" x1="1216" />
        </branch>
        <branch name="F21MHz">
            <wire x2="2064" y1="1088" y2="1088" x1="2032" />
        </branch>
        <branch name="XLXN_160">
            <wire x2="1808" y1="1088" y2="1088" x1="1696" />
        </branch>
        <instance x="1808" y="1120" name="XLXI_101" orien="R0" />
        <iomarker fontsize="28" x="2064" y="1088" name="F21MHz" orien="R0" />
        <branch name="F20MHz_dcm">
            <wire x2="2080" y1="1984" y2="1984" x1="2048" />
        </branch>
        <instance x="1824" y="2016" name="XLXI_69" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1984" name="F20MHz_dcm" orien="R0" />
        <branch name="XLXN_178">
            <wire x2="1824" y1="1984" y2="1984" x1="1696" />
        </branch>
        <branch name="F64MHz_in">
            <wire x2="688" y1="704" y2="704" x1="560" />
        </branch>
        <instance x="688" y="736" name="XLXI_102" orien="R0" />
        <iomarker fontsize="28" x="560" y="704" name="F64MHz_in" orien="R180" />
        <instance x="1232" y="736" name="XLXI_103" orien="R0">
        </instance>
        <branch name="XLXN_182">
            <wire x2="1216" y1="2368" y2="2368" x1="928" />
            <wire x2="1232" y1="2368" y2="2368" x1="1216" />
        </branch>
        <branch name="reset_DCM">
            <wire x2="704" y1="2368" y2="2368" x1="672" />
        </branch>
        <instance x="704" y="2400" name="XLXI_106" orien="R0" />
        <iomarker fontsize="28" x="672" y="2368" name="reset_DCM" orien="R180" />
        <branch name="f20MHz_in">
            <wire x2="1312" y1="400" y2="400" x1="1088" />
        </branch>
        <branch name="f20MHz">
            <wire x2="1760" y1="400" y2="400" x1="1536" />
        </branch>
        <instance x="1312" y="432" name="XLXI_80" orien="R0" />
        <iomarker fontsize="28" x="1760" y="400" name="f20MHz" orien="R0" />
        <iomarker fontsize="28" x="1088" y="400" name="f20MHz_in" orien="R180" />
        <branch name="XLXN_183">
            <wire x2="1808" y1="704" y2="704" x1="1696" />
        </branch>
        <instance x="1808" y="736" name="XLXI_107" orien="R0" />
        <branch name="F64Mhz">
            <wire x2="2064" y1="704" y2="704" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="704" name="F64Mhz" orien="R0" />
    </sheet>
</drawing>