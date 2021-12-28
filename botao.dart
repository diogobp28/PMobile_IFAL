int _selectedIndex = 0; // ADICIONAR NO TELA PLANTÕES REGISTRADOS

BottomNavigationBar buildBottomNavigationBar() {
  
  return BottomNavigationBar(
  
    currentIndex: _selectedIndex,
    
    onTap: (index) { 
      setState(() {
        _selectedIndex = index;
      })
    },

    selectedItemColor: Colors.grey, 
    unselectedItemColor: Colors.blue, 

    type: BottomNavigationBarType.fixed,

    items: [

      BottomNavigationBarItem(icon: Icon(icons.assignment_ind_rounded), label: 'MEUS PLANTÕES'),
      BottomNavigationBarItem(icon: Icon(icons.content_paste_rounded), label: 'GERENCIAR PLANTÕES'),
      BottomNavigationBarItem(icon: Icon(icons.book), label: 'HISTÓRICO'),
    
    ],
  );
}

// essa parte do código vai na TELA PLANTÕES REGISTRADOS

List<Widget> _pages;

@override 
void initState(){
  super.initState();
  _pages = <Widget>[ 
    TelaPlantoesRegistrados(), 
    TelaGerenciarPlantoes(),
    HistoricoPage(),
  ];
}


/*ALTERAR O BODY DO SCAFFOLD - MESMO ONDE ESTÁ O BOTTOM (TELA PLANTÕES- 
PARA ELE MOSTRAR O _PAGES */

body: _pages[_selectedIndex],
