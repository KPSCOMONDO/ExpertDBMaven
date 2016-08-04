package org.expert.database.services.implement;


import java.util.ArrayList;
import org.expert.database.entities.Language;
import org.expert.database.repositories.LanguageRepository;
import org.expert.database.services.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LanguageServiceImpl implements LanguageService{
    @Autowired
    private  LanguageRepository languageRepository;

    @Override
    public ArrayList<Language> findAll() {
        return languageRepository.findAll();
    }

    @Override
    public Language findByID(byte language_id) {
        return languageRepository.findByID(language_id);
    }

    @Override
    public void Insert(Language language) {
        languageRepository.Insert(language);
    }

    @Override
    public void Update(Language language) {
        languageRepository.Update(language);
    }

    @Override
    public void Delete(int language_id) {
        languageRepository.Delete(language_id);
    }

    
}
