.class public Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;
.super Landroid/widget/FrameLayout;
.source "LocationBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;
.implements Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;
.implements Lorg/chromium/chrome/browser/omnibox/LocationBar;
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACCEPTED_SCHEMES:Ljava/util/HashSet;

.field private static final UNSUPPORTED_SCHEMES_TO_SPLIT:Ljava/util/HashSet;


# instance fields
.field private mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

.field private mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

.field private mDefaultActionModeCallbackForTextEdit:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

.field private final mDeferredNativeRunnables:Ljava/util/List;

.field protected mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mFadeInOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

.field private mFocusedTabImportantForAccessibilityState:I

.field private mFocusedTabView:Landroid/view/View;

.field private mHasStartedNewOmniboxEditSession:Z

.field private mIgnoreOmniboxItemSelection:Z

.field private mIsEmphasizingHttpsScheme:Z

.field private mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

.field protected mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mNativeInitialized:Z

.field protected mNavigationButton:Landroid/widget/ImageView;

.field private mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

.field private mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

.field private mNewOmniboxEditSessionTimestamp:J

.field private mOmniboxBackgroundAnimator:Landroid/animation/Animator;

.field private mOmniboxPrerender:Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;

.field private mOmniboxResultsContainer:Landroid/view/ViewGroup;

.field private mOriginalUrl:Ljava/lang/String;

.field private mQueryInTheOmnibox:Z

.field private mRequestSuggestions:Ljava/lang/Runnable;

.field protected mSecurityButton:Landroid/widget/ImageButton;

.field private mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

.field private mSecurityButtonShown:Z

.field private mSecurityIconType:I

.field private mShowSuggestions:Ljava/lang/Runnable;

.field private final mSuggestionItems:Ljava/util/List;

.field private mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

.field private final mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

.field private mSuggestionModalShown:Z

.field private mSuggestionSelectionInProgress:Z

.field private mSuggestionsShown:Z

.field private mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

.field protected mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

.field protected mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

.field private mUrlFocusChangeListener:Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;

.field private mUrlFocusedFromFakebox:Z

.field private mUrlHasFocus:Z

.field private mUrlTextAfterSuggestionsReceived:Ljava/lang/String;

.field private mUseDarkColors:Z

.field protected mVerboseStatusTextView:Landroid/widget/TextView;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

.field private mWindowDelegate:Lorg/chromium/chrome/browser/WindowDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    const-class v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    .line 140
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "about"

    aput-object v3, v0, v2

    const-string/jumbo v3, "data"

    aput-object v3, v0, v1

    const-string/jumbo v3, "file"

    aput-object v3, v0, v5

    const-string/jumbo v3, "ftp"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string/jumbo v4, "http"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "https"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "inline"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "javascript"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "chrome"

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->ACCEPTED_SCHEMES:Ljava/util/HashSet;

    .line 142
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v3, "file"

    aput-object v3, v0, v2

    const-string/jumbo v2, "javascript"

    aput-object v2, v0, v1

    const-string/jumbo v1, "data"

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->UNSUPPORTED_SCHEMES_TO_SPLIT:Ljava/util/HashSet;

    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    .line 181
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z

    .line 184
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    .line 186
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOriginalUrl:Ljava/lang/String;

    .line 207
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    .line 593
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->location_bar:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 594
    sget v0, Lorg/chromium/chrome/R$id;->navigation_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    .line 595
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Missing navigation type view."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 596
    :cond_0
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->PAGE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 599
    sget v0, Lorg/chromium/chrome/R$id;->security_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    .line 600
    iput v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityIconType:I

    .line 602
    sget v0, Lorg/chromium/chrome/R$id;->location_bar_verbose_status:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mVerboseStatusTextView:Landroid/widget/TextView;

    .line 604
    sget v0, Lorg/chromium/chrome/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 606
    sget v0, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    .line 614
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.htc.android.htcime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0xb0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setInputType(I)V

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setDelegate(Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;)V

    .line 621
    sget v0, Lorg/chromium/chrome/R$id;->url_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    .line 624
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/omnibox/LocationBar;Ljava/util/List;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    .line 626
    sget v0, Lorg/chromium/chrome/R$id;->mic_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 627
    return-void

    .line 596
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->EMPTY:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/AutocompleteController;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSuggestionUrlIfNeeded(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->loadUrlFromOmniboxMatch(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionModalShown:Z

    return v0
.end method

.method static synthetic access$1302(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionModalShown:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startZeroSuggest()V

    return-void
.end method

.method static synthetic access$1902(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V

    return-void
.end method

.method static synthetic access$2302(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerBackground(Z)V

    return-void
.end method

.method static synthetic access$2500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionSelectionInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlTextAfterSuggestionsReceived:Ljava/lang/String;

    return-object v0
.end method

.method private changeLocationBarIcon(Z)V
    .locals 4

    .prologue
    .line 803
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 806
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    .line 807
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 821
    :goto_1
    return-void

    .line 806
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    goto :goto_0

    .line 810
    :cond_2
    if-eqz p1, :cond_3

    .line 811
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    .line 815
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->shouldAnimateIconChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 816
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 820
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 813
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    goto :goto_2

    .line 818
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mLocationBarIconActiveAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_3
.end method

.method private clearSuggestions(Z)V
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1585
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->notifyDataSetChanged()V

    .line 1586
    :cond_0
    return-void
.end method

.method private emphasizeUrl()V
    .locals 1

    .prologue
    .line 1198
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->emphasizeUrl()V

    .line 1199
    :cond_0
    return-void
.end method

.method private fadeOutOmniboxResultsContainerBackground()V
    .locals 4

    .prologue
    .line 2201
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2202
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->omnibox_results_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2205
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2206
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2208
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2228
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeOutOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->runOmniboxResultsFadeAnimation(Landroid/animation/Animator;)V

    .line 2229
    return-void

    .line 2202
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 2080
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2081
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOnlineUrlFromTab()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1984
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1985
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1989
    :goto_0
    return-object v0

    .line 1986
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isOfflinePage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1987
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getOfflinePageOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1989
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecurityIconResource(IZ)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1139
    packed-switch p0, :pswitch_data_0

    .line 1151
    :pswitch_0
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1143
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$drawable;->omnibox_https_warning:I

    .line 1153
    :cond_0
    :goto_0
    :pswitch_2
    return v0

    .line 1145
    :pswitch_3
    sget v0, Lorg/chromium/chrome/R$drawable;->omnibox_https_invalid:I

    goto :goto_0

    .line 1148
    :pswitch_4
    if-eqz p1, :cond_1

    sget v0, Lorg/chromium/chrome/R$drawable;->omnibox_https_valid_light:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/chromium/chrome/R$drawable;->omnibox_https_valid:I

    goto :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSecurityLevel()I
    .locals 1

    .prologue
    .line 1128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1129
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    goto :goto_0
.end method

.method private initOmniboxResultsContainer()V
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2105
    :goto_0
    return-void

    .line 2087
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->omnibox_results_container_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2089
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    .line 2090
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    const/high16 v1, -0x5a000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2092
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$13;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$13;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private initSuggestionList()V
    .locals 3

    .prologue
    .line 1403
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Trying to initialize suggestions list before native init"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1404
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    if-eqz v0, :cond_1

    .line 1495
    :goto_0
    return-void

    .line 1406
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    .line 1420
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1423
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    .line 1426
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->initOmniboxResultsContainer()V

    .line 1427
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1430
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1432
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setClipToPadding(Z)V

    .line 1433
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->setSuggestionDelegate(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;)V

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 2022
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2026
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Loading URL before native side initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2028
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isNTPUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2030
    :cond_1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordOmniboxNavigation(Ljava/lang/String;I)V

    .line 2034
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 2038
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2039
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v3

    invoke-static {v2, p1, v3}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->getGeoHeader(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 2042
    const/high16 v2, 0x2000000

    or-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 2043
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 2045
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    .line 2046
    const-string/jumbo v1, "MobileOmniboxSearch"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v1, "MobileTabClobbered"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 2052
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->requestFocus()V

    .line 2056
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V

    .line 2057
    return-void

    .line 2049
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    goto :goto_0
.end method

.method private loadUrlFromOmniboxMatch(Ljava/lang/String;III)V
    .locals 10

    .prologue
    .line 2010
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2011
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 2012
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v9

    .line 2013
    :goto_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    sub-long v6, v0, v4

    .line 2015
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusedFromFakebox:Z

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getAutocompleteLength()I

    move-result v8

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->onSuggestionSelected(IILjava/lang/String;ZZJILorg/chromium/content_public/browser/WebContents;)V

    .line 2018
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->loadUrl(Ljava/lang/String;I)V

    .line 2019
    return-void

    .line 2011
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 2012
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 2013
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_2
.end method

.method private recordSuggestionsDismissed()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1623
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionSelectionInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    .line 1626
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1627
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    .line 1628
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->hasAnswer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1630
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getAnswerType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1639
    :cond_2
    :goto_2
    const-string/jumbo v0, "Omnibox.SuggestionsDismissed.AnswerType"

    invoke-static {v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    goto :goto_0

    .line 1632
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Answer type in dismissed suggestions is not an int: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getAnswerType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1626
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private runOmniboxResultsFadeAnimation(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxBackgroundAnimator:Landroid/animation/Animator;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxBackgroundAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    :goto_0
    return-void

    .line 2235
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxBackgroundAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 2236
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxBackgroundAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2238
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxBackgroundAnimator:Landroid/animation/Animator;

    .line 2239
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxBackgroundAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private setNavigationButtonType(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;)V
    .locals 3

    .prologue
    .line 1238
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$16;->$SwitchMap$org$chromium$chrome$browser$omnibox$LocationBarLayout$NavigationButtonType:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1262
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1240
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->ic_omnibox_page:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1242
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->light_normal_color:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1245
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 1270
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateVerboseStatusVisibility()V

    .line 1271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateLocationBarIconContainerVisibility()V

    .line 1272
    return-void

    .line 1242
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1248
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->ic_omnibox_magnifier:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1251
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1254
    :pswitch_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->offline_bolt:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1256
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    if-eqz v0, :cond_3

    sget v0, Lorg/chromium/chrome/R$color;->locationbar_status_color:I

    :goto_2
    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1259
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1256
    :cond_3
    sget v0, Lorg/chromium/chrome/R$color;->locationbar_status_color_light:I

    goto :goto_2

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 2000
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    .line 2001
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2002
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    .line 2003
    return v0
.end method

.method private shouldShowPageInfoForView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mVerboseStatusTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static splitPathFromUrlDisplayText(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1887
    .line 1888
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1889
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1890
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1891
    sget-object v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->UNSUPPORTED_SCHEMES_TO_SPLIT:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1892
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1914
    :goto_0
    return-object v0

    .line 1893
    :cond_0
    sget-object v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->ACCEPTED_SCHEMES:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1894
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1895
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1897
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1898
    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    if-ne v4, v6, :cond_3

    .line 1896
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1903
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1904
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1906
    :goto_2
    if-eq v0, v3, :cond_5

    .line 1907
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_4

    move-object v0, v2

    .line 1912
    :goto_3
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 1910
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1914
    :cond_5
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private startZeroSuggest()V
    .locals 6

    .prologue
    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mHasStartedNewOmniboxEditSession:Z

    .line 961
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    .line 962
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 963
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusedFromFakebox:Z

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->startZeroSuggest(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 970
    :cond_0
    return-void
.end method

.method private stopAutocomplete(Z)V
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->stop(Z)V

    .line 1651
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->cancelPendingAutocompleteStart()V

    .line 1652
    return-void
.end method

.method private static suggestionTypeToNavigationButtonType(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->isUrlSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->PAGE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 1097
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->MAGNIFIER:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    goto :goto_0
.end method

.method private updateCustomSelectionActionModeCallback()V
    .locals 2

    .prologue
    .line 1032
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->getActionModeCallback()Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1038
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDefaultActionModeCallbackForTextEdit:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method private updateNavigationButton()V
    .locals 3

    .prologue
    .line 1103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    .line 1104
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->EMPTY:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    .line 1105
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1107
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->suggestionTypeToNavigationButtonType(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    move-result-object v0

    .line 1117
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setNavigationButtonType(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;)V

    .line 1118
    :cond_1
    return-void

    .line 1109
    :cond_2
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-eqz v2, :cond_3

    .line 1110
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->MAGNIFIER:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    goto :goto_0

    .line 1111
    :cond_3
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isOfflinePage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1112
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->OFFLINE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    goto :goto_0

    .line 1113
    :cond_4
    if-eqz v1, :cond_0

    .line 1114
    sget-object v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->PAGE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    goto :goto_0
.end method

.method private updateOmniboxResultsContainer()V
    .locals 1

    .prologue
    .line 2108
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionsShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-eqz v0, :cond_2

    .line 2109
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->initOmniboxResultsContainer()V

    .line 2110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerVisibility(Z)V

    .line 2114
    :cond_1
    :goto_0
    return-void

    .line 2111
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerBackground(Z)V

    goto :goto_0
.end method

.method private updateOmniboxResultsContainerBackground(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2166
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2183
    :goto_0
    return-void

    .line 2168
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 2169
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2170
    :goto_1
    if-eqz p1, :cond_3

    .line 2171
    if-eqz v0, :cond_2

    .line 2172
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2169
    goto :goto_1

    .line 2174
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->fadeInOmniboxResultsContainerBackground()V

    goto :goto_0

    .line 2177
    :cond_3
    if-eqz v0, :cond_4

    .line 2178
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerVisibility(Z)V

    goto :goto_0

    .line 2180
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->fadeOutOmniboxResultsContainerBackground()V

    goto :goto_0
.end method

.method private updateOmniboxResultsContainerVisibility(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2117
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2118
    :goto_0
    if-ne v0, p1, :cond_2

    .line 2159
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 2117
    goto :goto_0

    .line 2127
    :cond_2
    if-eqz p1, :cond_4

    .line 2128
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2130
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2131
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .line 2133
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_3

    .line 2134
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setVisible(Z)V

    .line 2138
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2139
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabView:Landroid/view/View;

    .line 2140
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabImportantForAccessibilityState:I

    .line 2142
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 2146
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxResultsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2148
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_5

    .line 2149
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setVisible(Z)V

    .line 2150
    iput-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .line 2153
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabView:Landroid/view/View;

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabImportantForAccessibilityState:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2156
    iput-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFocusedTabView:Landroid/view/View;

    goto :goto_1
.end method

.method private updateSecurityButton(Z)V
    .locals 1

    .prologue
    .line 1219
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->changeLocationBarIcon(Z)V

    .line 1221
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShown:Z

    .line 1222
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateLocationBarIconContainerVisibility()V

    .line 1223
    return-void

    .line 1219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuggestionUrlIfNeeded(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1553
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "updateSuggestionUrlIfNeeded called before native initialization"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1555
    :cond_0
    const/4 v0, 0x0

    .line 1559
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->isUrlSuggestion()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getCorpusChipText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1561
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getFillIntoEdit()Ljava/lang/String;

    move-result-object v1

    .line 1562
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 1563
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1565
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->replaceSearchTermsInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 1568
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    .line 1571
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    sub-long/2addr v0, v2

    .line 1573
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v2, p2, v0, v1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->updateMatchDestinationUrlWithQueryFormulationTime(IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1571
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private updateUseDarkColors()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2299
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 2301
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isUsingBrandColor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-nez v0, :cond_3

    .line 2302
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v0

    .line 2303
    invoke-static {v0}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v0

    .line 2307
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 2308
    :goto_1
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    if-eq v0, v3, :cond_2

    .line 2309
    :goto_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    .line 2311
    return v2

    :cond_1
    move v0, v1

    .line 2307
    goto :goto_1

    :cond_2
    move v2, v1

    .line 2308
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private updateVerboseStatusVisibility()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1279
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    sget-object v2, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->OFFLINE:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1282
    :goto_0
    if-eqz v1, :cond_1

    .line 1284
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mVerboseStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/chromium/chrome/R$color;->locationbar_status_color:I

    :goto_2
    invoke-static {v3, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mVerboseStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1289
    sget v1, Lorg/chromium/chrome/R$id;->location_bar_verbose_status_separator:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1290
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    if-eqz v1, :cond_3

    sget v1, Lorg/chromium/chrome/R$color;->locationbar_status_separator_color:I

    :goto_3
    invoke-static {v3, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1293
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    sget v1, Lorg/chromium/chrome/R$id;->location_bar_verbose_status_extra_space:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    return-void

    :cond_0
    move v1, v0

    .line 1279
    goto :goto_0

    .line 1282
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 1284
    :cond_2
    sget v1, Lorg/chromium/chrome/R$color;->locationbar_status_color_light:I

    goto :goto_2

    .line 1290
    :cond_3
    sget v1, Lorg/chromium/chrome/R$color;->locationbar_status_separator_color_light:I

    goto :goto_3
.end method


# virtual methods
.method public backKeyPressed()V
    .locals 1

    .prologue
    .line 1860
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 1861
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 1863
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    .line 1865
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1866
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->requestFocus()V

    .line 1867
    :cond_0
    return-void
.end method

.method cancelPendingAutocompleteStart()V
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1665
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    .line 1667
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 1674
    return-void
.end method

.method protected fadeInOmniboxResultsContainerBackground()V
    .locals 4

    .prologue
    .line 2189
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeInOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2190
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->omnibox_results_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeInOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2193
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeInOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2194
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeInOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2197
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mFadeInOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->runOmniboxResultsFadeAnimation(Landroid/animation/Animator;)V

    .line 2198
    return-void

    .line 2190
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    .prologue
    .line 2393
    return-object p0
.end method

.method public getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2076
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstUrlBarFocusTime()J
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getFirstFocusTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMenuAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionList()Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    return-object v0
.end method

.method protected getSuggestionPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 1508
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xcdcdce

    .line 1510
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1516
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 1517
    const/16 v1, 0xfe

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1520
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1

    .line 1508
    :cond_1
    const v0, -0xa0a0a

    goto :goto_0
.end method

.method protected getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    return-object v0
.end method

.method protected getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowDelegate:Lorg/chromium/chrome/browser/WindowDelegate;

    return-object v0
.end method

.method public hideSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1598
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    if-nez v0, :cond_0

    .line 1611
    :goto_0
    return-void

    .line 1600
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1602
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->recordSuggestionsDismissed()V

    .line 1604
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V

    .line 1606
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setSuggestionsListVisibility(Z)V

    .line 1607
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->clearSuggestions(Z)V

    .line 1608
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateNavigationButton()V

    .line 1610
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionSelectionInProgress:Z

    goto :goto_0
.end method

.method public initializeControls(Lorg/chromium/chrome/browser/WindowDelegate;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .prologue
    .line 696
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowDelegate:Lorg/chromium/chrome/browser/WindowDelegate;

    .line 698
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    .line 699
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$3;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->setCustomSelectionActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V

    .line 724
    iput-object p3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 728
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    .line 729
    return-void
.end method

.method public isSecurityButtonShown()Z
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShown:Z

    return v0
.end method

.method protected isUrlFocusChangeInProgress()Z
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceSearchEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2244
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    if-nez v1, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return v0

    .line 2245
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2246
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v1, :cond_0

    .line 2248
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2253
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isRecognitionIntentPresent(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1740
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne p1, v0, :cond_2

    .line 1741
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    const-string/jumbo v0, ""

    invoke-direct {p0, v1, v1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1743
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 1746
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startZeroSuggest()V

    .line 1760
    :cond_1
    :goto_0
    return-void

    .line 1748
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->shouldShowPageInfoForView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1749
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 1750
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1751
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1752
    if-eqz v0, :cond_1

    .line 1753
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->show(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1756
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-ne p1, v0, :cond_1

    .line 1757
    const-string/jumbo v0, "MobileOmniboxVoiceSearch"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startVoiceRecognition()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 633
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, v6}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setCursorVisible(Z)V

    .line 634
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 639
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    .line 659
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    .line 660
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    sget-object v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    sget-object v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 663
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 664
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

    .line 667
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    sget-object v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    sget-object v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 670
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 671
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 677
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$2;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrlDirectionListener(Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;)V

    .line 684
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelectAllOnFocus(Z)V

    .line 685
    return-void
.end method

.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2364
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 2384
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->onVoiceResults(Landroid/os/Bundle;)Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;

    move-result-object v0

    .line 2368
    if-eqz v0, :cond_0

    .line 2370
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v1

    .line 2371
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2373
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v0

    const v2, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 2374
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setSearchQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 2378
    :cond_2
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2379
    if-nez v0, :cond_3

    .line 2380
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForVoiceSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2383
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->loadUrl(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 689
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateLayoutParams()V

    .line 690
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 691
    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 2

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    .line 746
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mVerboseStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateMicButtonState()V

    .line 750
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;-><init>(Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    .line 755
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxPrerender:Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;

    .line 757
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 758
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 762
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->onOmniboxFullyFunctional()V

    .line 764
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateCustomSelectionActionModeCallback()V

    .line 765
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateVisualsForState()V

    .line 766
    return-void
.end method

.method public onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1767
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Suggestions received before native side intialialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1769
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1771
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 1856
    :cond_1
    :goto_0
    return-void

    .line 1775
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object v2

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlTextAfterSuggestionsReceived:Ljava/lang/String;

    .line 1782
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v3, v4

    move v5, v4

    .line 1783
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1784
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    .line 1785
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v7

    .line 1786
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    .line 1789
    invoke-virtual {v7, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    .line 1791
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getMatchedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1793
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1798
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    new-instance v5, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    invoke-direct {v5, v1, v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;-><init>(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;Ljava/lang/String;)V

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    .line 1783
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v1

    goto :goto_1

    .line 1804
    :cond_4
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->clearSuggestions(Z)V

    .line 1805
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 1806
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    new-instance v3, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-direct {v3, v0, v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;-><init>(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1805
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v6

    move v5, v6

    .line 1810
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1811
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionsShown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    goto/16 :goto_0

    .line 1815
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->shouldAutocomplete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1816
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, v2, p2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1820
    :cond_8
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->initSuggestionList()V

    .line 1821
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->resetMaxTextWidths()V

    .line 1823
    if-eqz v5, :cond_9

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->notifySuggestionsChanged()V

    .line 1825
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1827
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;

    invoke-direct {v0, p0, v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;

    .line 1837
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->isUrlFocusChangeInProgress()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1838
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1845
    :cond_a
    :goto_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateNavigationButton()V

    .line 1847
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-instant"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->shouldPrerender()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxPrerender:Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->getCurrentNativeAutocompleteResult()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v6

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->prerenderMaybe(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto/16 :goto_0

    .line 1840
    :cond_b
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_c
    move v1, v5

    goto/16 :goto_2
.end method

.method public onTabLoadingNTP(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 2388
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setFakeboxDelegate(Lorg/chromium/chrome/browser/ntp/NewTabPage$FakeboxDelegate;)V

    .line 2389
    return-void
.end method

.method public onTextChangedForAutocomplete(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 974
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->cancelPendingAutocompleteStart()V

    .line 976
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateDeleteButtonVisibility()V

    .line 977
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateNavigationButton()V

    .line 979
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mHasStartedNewOmniboxEditSession:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->resetSession()V

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mHasStartedNewOmniboxEditSession:Z

    .line 982
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    .line 985
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setSelection(I)V

    .line 989
    :cond_1
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V

    .line 990
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 991
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 992
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startZeroSuggest()V

    .line 1019
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    .line 1020
    :cond_2
    return-void

    .line 994
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Multiple omnibox requests in flight."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 995
    :cond_4
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    .line 1009
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-eqz v0, :cond_5

    .line 1010
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1012
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onUrlFocusChange(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 876
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    .line 877
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->onUrlFocusChanged(Z)V

    .line 878
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateDeleteButtonVisibility()V

    .line 879
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateNavigationButton()V

    .line 880
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 881
    if-eqz p1, :cond_a

    .line 882
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FocusLocation"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->deEmphasizeUrl()V

    .line 895
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isUsingBrandColor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateVisualsForState()V

    .line 897
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->selectAll()V

    .line 900
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusChangeListener:Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusChangeListener:Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;->onUrlFocusChange(Z)V

    .line 901
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_b

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->isSecurityButtonShown()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->changeLocationBarIcon(Z)V

    .line 903
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setCursorVisible(Z)V

    .line 904
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    .line 906
    :cond_5
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainer()V

    .line 907
    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerBackground(Z)V

    .line 909
    :cond_6
    if-eqz p1, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_7

    .line 910
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isDefaultSearchEngineGoogle()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 912
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->primeLocationForGeoHeader(Landroid/content/Context;)V

    .line 925
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-eqz v0, :cond_d

    .line 926
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startZeroSuggest()V

    .line 938
    :goto_3
    if-nez p1, :cond_8

    .line 939
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mHasStartedNewOmniboxEditSession:Z

    .line 940
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNewOmniboxEditSessionTimestamp:J

    .line 943
    :cond_8
    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    .line 944
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 945
    if-eqz v0, :cond_9

    .line 946
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    const/16 v2, 0x2ee

    invoke-static {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->maybeShowSnackbar(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/view/View;ZI)V

    .line 951
    :cond_9
    return-void

    .line 885
    :cond_a
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusedFromFakebox:Z

    .line 886
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 889
    if-eqz v3, :cond_1

    .line 890
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    .line 891
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->emphasizeUrl()V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 901
    goto :goto_1

    .line 914
    :cond_c
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$4;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 928
    :cond_d
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$5;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public onUrlPreFocusChanged(Z)V
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getOnlineUrlFromTab()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 2258
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2259
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateMicButtonState()V

    .line 2260
    :cond_0
    return-void
.end method

.method public performSearchQueryForTest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1686
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1689
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->loadUrl(Ljava/lang/String;I)V

    goto :goto_0

    .line 1691
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setSearchQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestUrlFocusFromFakebox(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusedFromFakebox:Z

    .line 1043
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->requestFocus()Z

    .line 1045
    if-eqz p1, :cond_0

    .line 1047
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1048
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    .line 1050
    :cond_0
    return-void
.end method

.method public revertChanges()V
    .locals 3

    .prologue
    .line 845
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    .line 856
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getOnlineUrlFromTab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setAutocompleteController(Lorg/chromium/chrome/browser/omnibox/AutocompleteController;)V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V

    .line 784
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    .line 785
    return-void
.end method

.method public setAutocompleteProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 797
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Setting Autocomplete Profile before native side initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 798
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->setProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 799
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxPrerender:Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->initializeForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 800
    return-void
.end method

.method public setDefaultTextEditActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDefaultActionModeCallbackForTextEdit:Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    .line 1025
    return-void
.end method

.method public setMenuButtonHelper(Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z

    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1714
    :cond_1
    invoke-direct {p0, v1, v1, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1715
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(II)V

    .line 1716
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->requestFocus()Z

    .line 1717
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V

    .line 1718
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1719
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->start(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1722
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$11;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$11;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setShowTitle(Z)V
    .locals 0

    .prologue
    .line 2400
    return-void
.end method

.method protected setSuggestionsListVisibility(Z)V
    .locals 2

    .prologue
    .line 1528
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionsShown:Z

    .line 1529
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    .line 1531
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 1532
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->show()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->access$2200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;)V

    .line 1537
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainer()V

    .line 1538
    return-void

    .line 1533
    :cond_1
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleToPageTitle()V
    .locals 0

    .prologue
    .line 2397
    return-void
.end method

.method public setToolbarDataProvider(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;)V
    .locals 2

    .prologue
    .line 1057
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    .line 1059
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$7;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$7;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1065
    return-void
.end method

.method public setUrlBarFocus(Z)V
    .locals 1

    .prologue
    .line 836
    if-eqz p1, :cond_0

    .line 837
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->requestFocus()Z

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->clearFocus()V

    goto :goto_0
.end method

.method public setUrlFocusChangeListener(Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlFocusChangeListener:Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;

    .line 1082
    return-void
.end method

.method public setUrlToPageUrl()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1928
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    :goto_0
    return-void

    .line 1930
    :cond_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    .line 1932
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1933
    const-string/jumbo v0, ""

    invoke-direct {p0, v1, v1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1938
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 1939
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOmniboxPrerender:Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->clear(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 1941
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getOnlineUrlFromTab()Ljava/lang/String;

    move-result-object v0

    .line 1942
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOriginalUrl:Ljava/lang/String;

    .line 1944
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1946
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1951
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1952
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->wouldReplaceURL()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1953
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityLevel()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    .line 1954
    sget-boolean v2, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Search terms should not be shown for https error pages."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    move v2, v3

    move-object v3, v0

    .line 1963
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1964
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->splitPathFromUrlDisplayText(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 1965
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1966
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1969
    :cond_5
    invoke-direct {p0, v0, v1, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1970
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->deEmphasizeUrl()V

    .line 1971
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->emphasizeUrl()V

    .line 1973
    :cond_6
    if-eqz v2, :cond_7

    .line 1974
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateNavigationButton()V

    .line 1976
    :cond_7
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateCustomSelectionActionModeCallback()V

    goto/16 :goto_0

    .line 1957
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1959
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    move-object v3, v0

    move-object v0, v2

    move v2, v4

    goto :goto_1

    :cond_9
    move-object v7, v2

    move v2, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1
.end method

.method protected shouldAnimateIconChanges()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlHasFocus:Z

    return v0
.end method

.method public shouldEmphasizeHttpsScheme()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1203
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityLevel()I

    move-result v2

    .line 1204
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1211
    :cond_1
    :goto_0
    return v0

    .line 1209
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isUsingBrandColor()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1210
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1211
    goto :goto_0
.end method

.method protected shouldShowDeleteButton()Z
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showingQueryInTheOmnibox()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    return v0
.end method

.method public startVoiceRecognition()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2319
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2320
    if-nez v0, :cond_1

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2322
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2323
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2324
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$15;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$15;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    .line 2338
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_0

    .line 2341
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateMicButtonState()V

    goto :goto_0

    .line 2346
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2347
    const-string/jumbo v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v3, "web_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    const-string/jumbo v2, "calling_package"

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2351
    const-string/jumbo v2, "android.speech.extra.WEB_SEARCH_ONLY"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2353
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/chrome/R$string;->voice_search_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v1

    if-gez v1, :cond_0

    .line 2355
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isRecognitionIntentPresent(Landroid/content/Context;Z)Z

    .line 2356
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateMicButtonState()V

    goto :goto_0
.end method

.method protected updateDeleteButtonVisibility()V
    .locals 0

    .prologue
    .line 1385
    return-void
.end method

.method protected updateLayoutParams()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/high16 v9, -0x80000000

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, -0x1

    .line 1313
    move v1, v2

    move v3, v2

    .line 1315
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 1316
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1317
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2

    .line 1318
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1319
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 1320
    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 1321
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    :cond_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    if-ne v6, v4, :cond_1

    .line 1354
    :goto_1
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-ne v1, v5, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1329
    :cond_1
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v10, :cond_3

    .line 1330
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1339
    :goto_2
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v10, :cond_5

    .line 1340
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1349
    :goto_3
    invoke-virtual {v6, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1350
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v3, v0

    .line 1315
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1332
    :cond_3
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v5, :cond_4

    .line 1333
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    .line 1336
    :cond_4
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    .line 1342
    :cond_5
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v5, :cond_6

    .line 1343
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_3

    .line 1346
    :cond_6
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_3

    .line 1356
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 1357
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_8

    .line 1359
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1360
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1356
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1366
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1367
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    if-eq v1, v2, :cond_a

    .line 1368
    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 1369
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    :cond_a
    return-void

    :cond_b
    move v1, v5

    goto/16 :goto_1
.end method

.method public updateLoadingState(Z)V
    .locals 1

    .prologue
    .line 2065
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    .line 2066
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateNavigationButton()V

    .line 2067
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSecurityIcon(I)V

    .line 2068
    return-void
.end method

.method protected updateLocationBarIconContainerVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1304
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    sget-object v2, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;->EMPTY:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1306
    :goto_0
    sget v2, Lorg/chromium/chrome/R$id;->location_bar_icon:I

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    return-void

    :cond_1
    move v0, v1

    .line 1304
    goto :goto_0

    .line 1306
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public updateMicButtonState()V
    .locals 2

    .prologue
    .line 2268
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->isVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 2269
    return-void

    .line 2268
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateSecurityIcon(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1161
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mQueryInTheOmnibox:Z

    if-eqz v1, :cond_1

    .line 1162
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    :cond_0
    move p1, v0

    .line 1170
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->shouldEmphasizeHttpsScheme()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityIconResource(IZ)I

    move-result v1

    .line 1172
    if-nez v1, :cond_5

    .line 1173
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->shouldEmphasizeHttpsScheme()Z

    move-result v1

    .line 1179
    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityIconType:I

    if-ne v3, p1, :cond_6

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIsEmphasizingHttpsScheme:Z

    if-ne v3, v1, :cond_6

    .line 1195
    :goto_3
    return-void

    .line 1165
    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1167
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlToPageUrl()V

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1170
    goto :goto_1

    .line 1175
    :cond_5
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 1183
    :cond_6
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityIconType:I

    .line 1185
    if-nez p1, :cond_7

    .line 1186
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSecurityButton(Z)V

    .line 1192
    :goto_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->deEmphasizeUrl()V

    .line 1193
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->emphasizeUrl()V

    .line 1194
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIsEmphasizingHttpsScheme:Z

    goto :goto_3

    .line 1188
    :cond_7
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSecurityButton(Z)V

    goto :goto_4
.end method

.method public updateVisualsForState()V
    .locals 2

    .prologue
    .line 2277
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateUseDarkColors()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIsEmphasizingHttpsScheme:Z

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->shouldEmphasizeHttpsScheme()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2278
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSecurityIcon(I)V

    .line 2280
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    if-eqz v0, :cond_3

    sget v0, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    :goto_0
    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2282
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 2283
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 2285
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButtonType:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setNavigationButtonType(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$NavigationButtonType;)V

    .line 2286
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setUseDarkTextColors(Z)V

    .line 2288
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    if-eqz v0, :cond_2

    .line 2289
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSuggestionPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2291
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUseDarkColors:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->setUseDarkColors(Z)V

    .line 2292
    return-void

    .line 2280
    :cond_3
    sget v0, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    goto :goto_0
.end method
