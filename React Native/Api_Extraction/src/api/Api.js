import axios from 'axios';

export default axios.create({
	baseURL: 'https://api.openweathermap.org/data/2.5/weather?q=${cityName}&units=metric&appid=${API_KEY}',
	headers: {
		Authorization: 'Bearer 176f12e7cc8429ed23af2dc65ba2bd40'
	}
});
