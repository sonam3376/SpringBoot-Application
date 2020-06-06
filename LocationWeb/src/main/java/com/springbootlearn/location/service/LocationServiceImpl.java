package com.springbootlearn.location.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootlearn.location.entities.Location;
import com.springbootlearn.location.entities.LocationRepository;

@Service
public class LocationServiceImpl implements LocationService {

	
	@Autowired
	private LocationRepository locationRepository;
	
	@Override
	public Location saveLocation(Location location) {
		return locationRepository.save(location);

	}

	@Override
	public Location updateLocation(Location location) {
		return locationRepository.save(location);
	}

	@Override
	public void deleteLocation(Location location) {
		locationRepository.delete(location);

	}

	@Override
	public Location getlocationById(int id) {
		return locationRepository.findById(id).get();
			}

	@Override
	public List<Location> getAllLocations() {
		return locationRepository.findAll();	
		
	}

	public LocationRepository getLocationRepository() {
		return locationRepository;
	}

	public void setLocationRepository(LocationRepository locationRepository) {
		this.locationRepository = locationRepository;
	}

}
