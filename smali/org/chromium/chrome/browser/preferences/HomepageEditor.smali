.class public Lorg/chromium/chrome/browser/preferences/HomepageEditor;
.super Landroid/app/Fragment;
.source "HomepageEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

.field private mHomepageUrlEdit:Landroid/widget/EditText;

.field private mResetButton:Landroid/widget/Button;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageUrlEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private initializeSaveCancelResetButtons(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    sget v0, Lorg/chromium/chrome/R$id;->homepage_reset:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mResetButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/HomepageEditor$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor$1;-><init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageUseDefaultUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->homepage_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mSaveButton:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;-><init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v0, Lorg/chromium/chrome/R$id;->homepage_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    new-instance v1, Lorg/chromium/chrome/browser/preferences/HomepageEditor$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor$3;-><init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->options_homepage_edit_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 38
    sget v0, Lorg/chromium/chrome/R$layout;->homepage_editor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    sget v0, Lorg/chromium/chrome/R$id;->homepage_url:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    .line 41
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->focusWithoutAnimation()V

    .line 43
    sget v0, Lorg/chromium/chrome/R$id;->homepage_url_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageUrlEdit:Landroid/widget/EditText;

    .line 44
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageUrlEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageUseDefaultUri()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->getHomePageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageUrlEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->initializeSaveCancelResetButtons(Landroid/view/View;)V

    .line 50
    return-object v1

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getPrefHomepageCustomUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    return-void
.end method
