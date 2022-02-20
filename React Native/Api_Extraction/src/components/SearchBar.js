import React from 'react';
import { Ionicons } from '@expo/vector-icons';
import { StyleSheet, Text, TextInput, View} from 'react-native';

const SearchBar=({term,onTermChange, onTermSubmit}) => {
  return (
  <View style={styles.container}>
    <Ionicons 
	name="md-search-sharp"
	size={24}
	color="black"
	style={{marginLeft:10}}/>
	
	<TextInput
	style={styles.input}
	placeholder= 'search'
	autoCorrect={false}
	value={term}
		onChangeText={newTerm => onTermChange(newTerm)}
		onEndEditing={()=>onTermSubmit()}
	/>
	
	<View>

	</View>
	
	</View>
  );
}


const styles = StyleSheet.create({
  container: {
    backgroundColor: '#48d1cc',
    borderRadius: 9,
	padding: 10,
	width: 500,
	margin: 30,
	marginLeft: 50,
	flexDirection: 'row',
	
  },
	input: {
		Flex:1,
		fontSize:20,
		marginLeft: 10,
	},
	
});

export default SearchBar;
