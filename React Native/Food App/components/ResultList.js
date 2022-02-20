import React from 'react';
import {View, Text, StyleSheet,FlatList,Image} from 'react-native';

const ResultList = ({title,results}) => {
	return (
	<View>
	<Text style={style.title}>{title}</Text>
	<FlatList
	horizontal
	data={results}
	keyExtractor={result => result.id}
	renderItem={({item}) => {
		return <View style = {style.view}>
		
		      <Image style={style.ok} source={{uri:item.image_url}}/>
		       <Text style={style.fine}>{item.name} </Text>
		       <Text style={style.fine}>{item.rating} </Text>
			   </View>
			   
	}
		
	}
	/>
	
	</View>
	);
};

const style= StyleSheet.create({

	view : {
		marginLeft : 15
	},
	title: {
		fontSize: 18,
		fontWeight: 'bold'
	},
	ok: {
		width: 300,
		height: 250,
		borderWidth: 5,
		borderColor: 'orange',
		margin:8,
		borderRadius : 25
	},
	fine : {
		fontSize : 25,
		color : 'black',
		marginLeft : 30
	}
});

export default ResultList;