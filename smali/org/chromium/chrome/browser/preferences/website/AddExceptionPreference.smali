.class public Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;
.super Landroid/preference/Preference;
.source "AddExceptionPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDialogMessage:Ljava/lang/String;

.field private mPrefAccentColor:I

.field private mSiteAddedCallback:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mDialogMessage:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mSiteAddedCallback:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;

    .line 64
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->setKey(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget v1, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mPrefAccentColor:I

    .line 70
    sget v1, Lorg/chromium/chrome/R$drawable;->plus:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 72
    iget v2, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mPrefAccentColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget v1, Lorg/chromium/chrome/R$string;->website_settings_add_site:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;)Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mSiteAddedCallback:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;

    return-object v0
.end method

.method private showAddExceptionDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 98
    sget v1, Lorg/chromium/chrome/R$layout;->add_site_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    sget v0, Lorg/chromium/chrome/R$id;->site:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 101
    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;Landroid/widget/EditText;)V

    .line 112
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 113
    sget v4, Lorg/chromium/chrome/R$string;->website_settings_add_site_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->website_settings_add_site_add_button:I

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/E;->a(Z)V

    .line 121
    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$2;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$2;-><init>(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 127
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 128
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;

    invoke-direct {v2, p0, v1, v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;-><init>(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 81
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 83
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mPrefAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->showAddExceptionDialog()V

    .line 89
    const/4 v0, 0x1

    return v0
.end method
