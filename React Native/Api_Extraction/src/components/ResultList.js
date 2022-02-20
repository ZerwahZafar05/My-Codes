import React from 'react';
import {View, Text, StyleSheet,FlatList} from 'react-native';

const ResultList = ({title,results}) => {
	return (
	<View>
	<Text style={style.title}>{title}</Text>
	<FlatList
	horizontal
	data={results}
	keyExtractor={result => result.id}
	renderItem={({item}) => {
		return <ApiDetails result={item} />
	}
		
	}
	/>
	</View>
	);
};

const style= StyleSheet.create({
	title: {
		fontSize: 18,
		fontWeight: 'bold'
	}
});

export default ResultList; 