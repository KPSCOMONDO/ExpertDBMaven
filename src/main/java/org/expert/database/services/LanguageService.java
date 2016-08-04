package org.expert.database.services;

import java.util.ArrayList;
import org.expert.database.entities.Language;

public interface LanguageService {
    public ArrayList<Language> findAll();
    public Language findByID(byte language_id);
    public void Insert(Language language);
    public void Update(Language language);
    public void Delete(int language_id);
}
