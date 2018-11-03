package com.bitMiners.eProgrammerz.services.impl;

import com.bitMiners.eProgrammerz.domain.Language;
import com.bitMiners.eProgrammerz.repository.LanguageRepository;
import com.bitMiners.eProgrammerz.services.LanguageService;
import com.bitMiners.eProgrammerz.services.exceptions.LanguageAlreadyExistsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LanguageServiceImpl implements LanguageService {

    @Autowired
    private LanguageRepository languageRepo;

    @Override
    public Language findOne(Long id) {
        return languageRepo.findOne(id);
    }

    @Override
    public List<Language> findAll() {
        return languageRepo.findAll();
    }

    @Override
    public Long save(Language language) {
        Language langInDb = languageRepo.findLanguageByName(language.getName());
        if (langInDb != null) {
            throw new LanguageAlreadyExistsException();
        }
        Language saved = languageRepo.save(language);
        return saved.getId();
    }

    @Override
    public Long delete(Long id) {
        languageRepo.delete(id);
        return id;
    }

    @Override
    public Language update(Language language) {
        return languageRepo.saveAndFlush(language);
    }

    @Override
    public Language findLangByLangId(String id) {
        return languageRepo.findByLangId(id);
    }

}
