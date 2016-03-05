package com.bitMiners.eProgrammerz.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@Entity @JsonIgnoreProperties({"chapterContents"})
@Table(name="Chapter")
public class Chapter implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private Long id;
	
	@NotEmpty @NotNull
	private String title;
	
	@Lob @NotEmpty @NotNull
	private String description;
	
	private Date dateCreated;
	
	private int numberOfViewers;
	
	private int displayOrder;
	
	private String slug;
	
	private boolean isActive;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "languageId")
	private Language language;

	@OneToMany(cascade=CascadeType.REMOVE,mappedBy="chapter",fetch=FetchType.EAGER)
	private List<ChapterContent> chapterContents;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public int getNumberOfViewers() {
		return numberOfViewers;
	}

	public void setNumberOfViewers(int numberOfViewers) {
		this.numberOfViewers = numberOfViewers;
	}

	public int getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		int num = (int)(Math.random() * 1001);
		this.slug = title.replace(" ", "-")+num;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public List<ChapterContent> getChapterContents() {
		return chapterContents;
	}

	public void setChapterContents(List<ChapterContent> chapterContents) {
		this.chapterContents = chapterContents;
	}

}
