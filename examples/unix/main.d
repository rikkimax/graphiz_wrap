import graphviz_wrap;
import std.stdio : writeln;

void main() {
	auto g = new Digraph("unix", null, "unix.gv");
	g.body_ ~= `size="6,6"`;
	g.node_attr["color"] = "lightblue2";
	g.node_attr["style"] = "filled";
	
	g.edge("5th Edition", "6th Edition");
	g.edge("5th Edition", "PWB 1.0");
	g.edge("6th Edition", "LSX");
	g.edge("6th Edition", "1 BSD");
	g.edge("6th Edition", "Mini Unix");
	g.edge("6th Edition", "Wollongong");
	g.edge("6th Edition", "Interdata");
	g.edge("Interdata", "Unix/TS 3.0");
	g.edge("Interdata", "PWB 2.0");
	g.edge("Interdata", "7th Edition");
	g.edge("7th Edition", "8th Edition");
	g.edge("7th Edition", "32V");
	g.edge("7th Edition", "V7M");
	g.edge("7th Edition", "Ultrix-11");
	g.edge("7th Edition", "Xenix");
	g.edge("7th Edition", "UniPlus+");
	g.edge("V7M", "Ultrix-11");
	g.edge("8th Edition", "9th Edition");
	g.edge("1 BSD", "2 BSD");
	g.edge("2 BSD", "2.8 BSD");
	g.edge("2.8 BSD", "Ultrix-11");
	g.edge("2.8 BSD", "2.9 BSD");
	g.edge("32V", "3 BSD");
	g.edge("3 BSD", "4 BSD");
	g.edge("4 BSD", "4.1 BSD");
	g.edge("4.1 BSD", "4.2 BSD");
	g.edge("4.1 BSD", "2.8 BSD");
	g.edge("4.1 BSD", "8th Edition");
	g.edge("4.2 BSD", "4.3 BSD");
	g.edge("4.2 BSD", "Ultrix-32");
	g.edge("PWB 1.0", "PWB 1.2");
	g.edge("PWB 1.0", "USG 1.0");
	g.edge("PWB 1.2", "PWB 2.0");
	g.edge("USG 1.0", "CB Unix 1");
	g.edge("USG 1.0", "USG 2.0");
	g.edge("CB Unix 1", "CB Unix 2");
	g.edge("CB Unix 2", "CB Unix 3");
	g.edge("CB Unix 3", "Unix/TS++");
	g.edge("CB Unix 3", "PDP-11 Sys V");
	g.edge("USG 2.0", "USG 3.0");
	g.edge("USG 3.0", "Unix/TS 3.0");
	g.edge("PWB 2.0", "Unix/TS 3.0");
	g.edge("Unix/TS 1.0", "Unix/TS 3.0");
	g.edge("Unix/TS 3.0", "TS 4.0");
	g.edge("Unix/TS++", "TS 4.0");
	g.edge("CB Unix 3", "TS 4.0");
	g.edge("TS 4.0", "System V.0");
	g.edge("System V.0", "System V.2");
	g.edge("System V.2", "System V.3");
	
	g.view();
}