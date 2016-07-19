.class Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;
.super Ljava/lang/Object;
.source "BookmarkPromoHeader.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;
.implements Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShouldShow:Z

.field private mShowingChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;

.field private mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShowingChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lorg/chromium/sync/AndroidSyncSettings;->registerObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 68
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->updateShouldShow(Z)V

    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "enhanced_bookmark_signin_promo_show_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 72
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "enhanced_bookmark_signin_promo_show_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    const-string/jumbo v0, "Stars_SignInPromoHeader_Displayed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "Signin_Impression_FromBookmarkManager"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->setSigninPromoDeclined()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->updateShouldShow(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setSigninPromoDeclined()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "enhanced_bookmark_signin_promo_declined"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method private updateShouldShow(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShouldShow:Z

    .line 143
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/sync/AndroidSyncSettings;->isMasterSyncEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignInAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->wasSigninPromoDeclined()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "enhanced_bookmark_signin_promo_show_count"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShouldShow:Z

    .line 148
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShouldShow:Z

    if-eq v1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShowingChangeListener:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShouldShow:Z

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$PromoHeaderShowingChangeListener;->onPromoHeaderShowingChanged(Z)V

    .line 151
    :cond_1
    return-void
.end method

.method private wasSigninPromoDeclined()Z
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "enhanced_bookmark_signin_promo_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public androidSyncSettingsChanged()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->updateShouldShow(Z)V

    .line 158
    return-void
.end method

.method createHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/aY;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->bookmark_promo_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    sget v1, Lorg/chromium/chrome/R$id;->no_thanks:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v1, Lorg/chromium/chrome/R$id;->sign_in:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$3;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;Landroid/view/View;)V

    return-object v1
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lorg/chromium/sync/AndroidSyncSettings;->unregisterObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->removeSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 87
    return-void
.end method

.method public onSignedIn()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->updateShouldShow(Z)V

    .line 165
    return-void
.end method

.method public onSignedOut()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->updateShouldShow(Z)V

    .line 170
    return-void
.end method

.method shouldShow()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mShouldShow:Z

    return v0
.end method
