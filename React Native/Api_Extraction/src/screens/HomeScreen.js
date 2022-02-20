import { StatusBar } from 'expo-status-bar';
import React, {useState} from 'react';
import { Ionicons } from '@expo/vector-icons';
import { StyleSheet, Text, TextInput, View, Button, TouchableOpacity} from 'react-native';
import SearchBar from '../components/SearchBar';
import Api from '../api/Api.js';
import ResultList from '../components/ResultList';

const HomeScreen=(props) => {
	const [term,setTerm] = useState('');
	const [results,setResults] = useState([]);
	
	const searchApi = async() => {
		const response = await Api.get('/search', {
			params:{
				limit: 50,
				term,
				location: 'Pakistan'
			}
		});
		//setResults(response.data.location);
	};

  return (
  <View>
    <SearchBar 
	term={term} 
	onTermChange={newTerm=>setTerm(newTerm)}
	onTermSubmit={() => searchApi()}
	/>
	<Text>We have found {results.length} results</Text>
	
	</View>
  );
}


const styles = StyleSheet.create({

	
});

export default HomeScreen;
