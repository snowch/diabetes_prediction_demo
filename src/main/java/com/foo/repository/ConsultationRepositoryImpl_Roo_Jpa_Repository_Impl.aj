// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foo.repository;

import com.foo.domain.Consultation;
import com.foo.domain.Patient;
import com.foo.domain.QConsultation;
import com.foo.repository.ConsultationRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect ConsultationRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: ConsultationRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.PATIENT = "patient";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.CONSULTATION_DATE = "consultationDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.PREGNANCIES = "pregnancies";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.GLUCOSE = "glucose";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.BLOOD_PRESSURE = "bloodPressure";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.SKIN_THICKNESS = "skinThickness";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.INSULIN = "insulin";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.BMI = "bmi";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.DIABETES_PEDIGREE_FUNCTION = "diabetesPedigreeFunction";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.AGE = "age";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ConsultationRepositoryImpl.PREDICTION = "prediction";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Consultation> ConsultationRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QConsultation consultation = QConsultation.consultation;
        
        JPQLQuery<Consultation> query = from(consultation);
        
        Path<?>[] paths = new Path<?>[] {consultation.patient,consultation.consultationDate,consultation.pregnancies,consultation.glucose,consultation.bloodPressure,consultation.skinThickness,consultation.insulin,consultation.bmi,consultation.diabetesPedigreeFunction,consultation.age,consultation.prediction};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PATIENT, consultation.patient)
			.map(CONSULTATION_DATE, consultation.consultationDate)
			.map(PREGNANCIES, consultation.pregnancies)
			.map(GLUCOSE, consultation.glucose)
			.map(BLOOD_PRESSURE, consultation.bloodPressure)
			.map(SKIN_THICKNESS, consultation.skinThickness)
			.map(INSULIN, consultation.insulin)
			.map(BMI, consultation.bmi)
			.map(DIABETES_PEDIGREE_FUNCTION, consultation.diabetesPedigreeFunction)
			.map(AGE, consultation.age)
			.map(PREDICTION, consultation.prediction);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, consultation);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Consultation> ConsultationRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QConsultation consultation = QConsultation.consultation;
        
        JPQLQuery<Consultation> query = from(consultation);
        
        Path<?>[] paths = new Path<?>[] {consultation.patient,consultation.consultationDate,consultation.pregnancies,consultation.glucose,consultation.bloodPressure,consultation.skinThickness,consultation.insulin,consultation.bmi,consultation.diabetesPedigreeFunction,consultation.age,consultation.prediction};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(consultation.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PATIENT, consultation.patient)
			.map(CONSULTATION_DATE, consultation.consultationDate)
			.map(PREGNANCIES, consultation.pregnancies)
			.map(GLUCOSE, consultation.glucose)
			.map(BLOOD_PRESSURE, consultation.bloodPressure)
			.map(SKIN_THICKNESS, consultation.skinThickness)
			.map(INSULIN, consultation.insulin)
			.map(BMI, consultation.bmi)
			.map(DIABETES_PEDIGREE_FUNCTION, consultation.diabetesPedigreeFunction)
			.map(AGE, consultation.age)
			.map(PREDICTION, consultation.prediction);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, consultation);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param patient
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Consultation> ConsultationRepositoryImpl.findByPatient(Patient patient, GlobalSearch globalSearch, Pageable pageable) {
        
        QConsultation consultation = QConsultation.consultation;
        
        JPQLQuery<Consultation> query = from(consultation);
        
        Assert.notNull(patient, "patient is required");
        
        query.where(consultation.patient.eq(patient));
        Path<?>[] paths = new Path<?>[] {consultation.patient,consultation.consultationDate,consultation.pregnancies,consultation.glucose,consultation.bloodPressure,consultation.skinThickness,consultation.insulin,consultation.bmi,consultation.diabetesPedigreeFunction,consultation.age,consultation.prediction};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PATIENT, consultation.patient)
			.map(CONSULTATION_DATE, consultation.consultationDate)
			.map(PREGNANCIES, consultation.pregnancies)
			.map(GLUCOSE, consultation.glucose)
			.map(BLOOD_PRESSURE, consultation.bloodPressure)
			.map(SKIN_THICKNESS, consultation.skinThickness)
			.map(INSULIN, consultation.insulin)
			.map(BMI, consultation.bmi)
			.map(DIABETES_PEDIGREE_FUNCTION, consultation.diabetesPedigreeFunction)
			.map(AGE, consultation.age)
			.map(PREDICTION, consultation.prediction);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, consultation);
    }
    
}