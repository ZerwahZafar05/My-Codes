import React, { useState, useEffect } from 'react'
import { View, Text, StyleSheet, ImageBackground, Dimensions, StatusBar } from 'react-native';
import SearchBar from './SearchBar';
import { haze, rainy, snow, sunny } from '../assets/backgroundImages/index';
import { Ionicons, EvilIcons, Fontisto} from '@expo/vector-icons';

export default function Weather({ weatherData, fetchWeatherData }) {

    const [backgroundImage, setBackgroundImage] = useState(null);
	// const setIcon = ({weatherData}) => {
		// switch (weatherData){
			// case 'Snow':
			// <Ionicons name="cloudy-outline" size={24} color="black" />
			// return;
			// case 'Clear':
			// <Ionicons name="sunny" size={24} color="black" />
			// return;  
			// case 'Rain':
			// <Ionicons name="rainy-outline" size={24} color="black" />
			// return;
			// case 'Haze':
			// <Fontisto name="day-haze" size={24} color="black" />
			// return;
		// }
	// }

    const { weather,
			name,
            main: { temp, humidity },
    } = weatherData;
    const [{ main }] = weather;

    useEffect(() => {
        setBackgroundImage(getBackgroundImg(main));
    }, [weatherData])
	
	// useEffect(() => {
        // setIcon(getIcon(main));
    // }, [weatherData])

    function getBackgroundImg(weather) {
        if(weather === 'Snow') return snow
		//<Ionicons name="cloudy-outline" size={24} color="black" />
        if(weather === 'Clear') return sunny
		//<Ionicons name="sunny" size={24} color="black" />
        if(weather === 'Rain') return rainy
		//<Ionicons name="rainy-outline" size={24} color="black" />
        if(weather === 'Haze') return haze
		//<Fontisto name="day-haze" size={24} color="black" />
        return haze;   
    }
	
	// function getIcon(weather) {
        // if(weather === 'Snow') return <Ionicons name="cloudy-outline" size={24} color="black" />
        // if(weather === 'Clear') return <Ionicons name="sunny" size={24} color="black" />
        // if(weather === 'Rain') return <Ionicons name="rainy-outline" size={24} color="black" />
        // if(weather === 'Haze') return <Fontisto name="day-haze" size={24} color="black" />
        // return null;   
    // }

    let textColor = backgroundImage !== sunny ? 'white' : 'black'
    
    return (
	<View style={styles.container}>
     <StatusBar 
	 backgroundColor='white'/>
	 
     <ImageBackground 
		source={backgroundImage}
        style={styles.backgroundImg}
       >
      <SearchBar fetchWeatherData={fetchWeatherData} />

                <View style={{alignItems: 'center' }}>
                    <Text style={{ ...styles.headerText, color: textColor, fontWeight: 'bold', fontSize: 46 }}>{name}</Text>
                    <Text style={{ ...styles.headerText, color: textColor, fontWeight: 'bold'}}>{main}</Text>
                    <Text style={{ ...styles.headerText, color: textColor,}}>{temp}°C</Text>
                </View>

                <View style={styles.extraInfo}>

                    <View style={styles.info}>
                        <Text style={{ fontSize: 22, color: 'white' }}>Humidity</Text>
                        <Text style={{ fontSize: 22, color: 'white' }}>{humidity} %</Text>
                    </View>
                
                </View>
                

            </ImageBackground>
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
      backgroundColor: 'white',
      alignItems: 'center',
    },
    backgroundImg: {
        flex: 1,
        width: Dimensions.get('screen').width
    },
    headerText: {
        fontSize: 36,
        marginTop: 10,
    },
    extraInfo: {
        flexDirection: 'row',
        marginTop: 20,
		marginRight: 20,
        justifyContent: 'space-between',
        padding: 10
    },
    info: {
        width: Dimensions.get('screen').width,
        backgroundColor: 'rgba(0,0,0, 0.5)',
        padding: 10,
        borderRadius: 15,
        justifyContent: 'center'
    }
});
  