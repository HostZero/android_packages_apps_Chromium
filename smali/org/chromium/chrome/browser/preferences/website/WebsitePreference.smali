.class Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;
.super Landroid/preference/Preference;
.source "WebsitePreference.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field private final mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

.field private mFaviconFetched:Z

.field private mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

.field private mFaviconSizePx:I

.field private final mSite:Lorg/chromium/chrome/browser/preferences/website/Website;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/website/Website;Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconFetched:Z

    .line 52
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 53
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    .line 54
    sget v0, Lorg/chromium/chrome/R$layout;->website_features:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->setWidgetLayoutResource(I)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->default_favicon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconSizePx:I

    .line 62
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->refresh()V

    .line 65
    return-void
.end method

.method private faviconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->website_settings_embedded_in:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 124
    instance-of v0, p1, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    if-nez v0, :cond_0

    .line 125
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 127
    :cond_0
    check-cast p1, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showStorageSites()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->compareByStorageTo(Lorg/chromium/chrome/browser/preferences/website/Website;)I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->compareByAddressTo(Lorg/chromium/chrome/browser/preferences/website/Website;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 139
    sget v0, Lorg/chromium/chrome/R$id;->usage_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showStorageSites()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTotalUsage()J

    move-result-wide v2

    .line 143
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconFetched:Z

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->faviconUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconSizePx:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0, v6, v6}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 157
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconFetched:Z

    .line 160
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 161
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 162
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    return-void
.end method

.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->destroy()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 82
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 85
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mFaviconSizePx:I

    int-to-float v1, v1

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 86
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x2

    const v5, -0x69696a

    const/16 v6, 0xa

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(Landroid/content/Context;IIIII)V

    .line 90
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->faviconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 93
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public putSiteIntoExtras(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    return-void
.end method

.method public site()Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->mSite:Lorg/chromium/chrome/browser/preferences/website/Website;

    return-object v0
.end method
