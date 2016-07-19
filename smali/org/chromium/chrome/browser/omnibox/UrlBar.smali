.class public Lorg/chromium/chrome/browser/omnibox/UrlBar;
.super Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;
.source "UrlBar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityTextOverride:Ljava/lang/String;

.field private mAllowFocus:Z

.field private final mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

.field private mBeforeBatchEditLength:I

.field private final mDarkDefaultTextColor:I

.field private final mDarkHighlightColor:I

.field private final mDarkHintColor:Landroid/content/res/ColorStateList;

.field private mDidEllipsizeTextHint:Z

.field private mDisableTextAccessibilityEvents:Z

.field private mDisableTextScrollingFromAutocomplete:Z

.field private mFirstDrawComplete:Z

.field private mFirstFocusTimeMs:J

.field private mFocused:Z

.field private mFormattedUrlLocation:Ljava/lang/String;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnoreAutocomplete:Z

.field private mInBatchEditMode:Z

.field mInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field private mIsPastedText:Z

.field private mLastUrlEditWasDelete:Z

.field private final mLightDefaultTextColor:I

.field private final mLightHighlightColor:I

.field private final mLightHintColor:I

.field private mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

.field private mOriginalUrlLocation:Ljava/lang/String;

.field private mSelectionChangedInBatchMode:Z

.field private mShowKeyboardOnWindowFocus:Z

.field private mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

.field private mUrlDirection:I

.field private mUrlDirectionListener:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;

.field private mUseDarkColors:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAllowFocus:Z

    .line 132
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mIgnoreAutocomplete:Z

    .line 951
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;

    invoke-direct {v0, p0, v3, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 187
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_default_text:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDarkDefaultTextColor:I

    .line 191
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDarkHintColor:Landroid/content/res/ColorStateList;

    .line 192
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getHighlightColor()I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDarkHighlightColor:I

    .line 194
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_light_default_text:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLightDefaultTextColor:I

    .line 196
    sget v1, Lorg/chromium/chrome/R$color;->locationbar_light_hint_text:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLightHintColor:I

    .line 198
    sget v1, Lorg/chromium/chrome/R$color;->locationbar_light_selection_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLightHighlightColor:I

    .line 201
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUseDarkTextColors(Z)V

    .line 203
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirection:I

    .line 204
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-direct {v0, p0, v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;Lorg/chromium/chrome/browser/omnibox/UrlBar$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    .line 212
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setFocusableInTouchMode(Z)V

    .line 215
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/omnibox/UrlBar$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$1;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 230
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 232
    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/omnibox/UrlBar;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->notifyAutocompleteTextStateChanged(Z)V

    return-void
.end method

.method private static getUrlContentsPrePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 918
    .line 919
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 920
    if-ltz v0, :cond_0

    .line 921
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 922
    if-lez v0, :cond_0

    .line 923
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 928
    :cond_0
    return-object p0
.end method

.method private limitDisplayableLength()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 880
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    .line 883
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 884
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 885
    if-gt v1, v0, :cond_4

    .line 886
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDidEllipsizeTextHint:Z

    if-eqz v0, :cond_2

    .line 887
    const-class v0, Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;

    invoke-interface {v3, v2, v1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;

    .line 888
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 889
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/UrlBar;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, v0

    if-eq v1, v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Should never apply more than a single EllipsisSpan"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 880
    :cond_0
    const/16 v0, 0xfa0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 890
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 891
    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 895
    :cond_2
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDidEllipsizeTextHint:Z

    .line 907
    :cond_3
    :goto_2
    return-void

    .line 899
    :cond_4
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDidEllipsizeTextHint:Z

    .line 901
    const-class v4, Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;

    invoke-interface {v3, v2, v1, v4}, Landroid/text/Editable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 902
    if-ne v2, v1, :cond_3

    .line 904
    div-int/lit8 v0, v0, 0x2

    .line 905
    sget-object v2, Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;->INSTANCE:Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;

    sub-int/2addr v1, v0

    const/16 v4, 0x11

    invoke-interface {v3, v2, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method private notifyAutocompleteTextStateChanged(Z)V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    if-nez v0, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mIgnoreAutocomplete:Z

    if-nez v0, :cond_0

    .line 1105
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLastUrlEditWasDelete:Z

    .line 1106
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->onTextChangedForAutocomplete(Z)V

    goto :goto_0
.end method

.method private scrollToTLD()V
    .locals 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 824
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 826
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 827
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUrlDirection()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 579
    if-nez v2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 583
    const/4 v0, 0x3

    .line 590
    :cond_2
    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirection:I

    if-eq v0, v1, :cond_0

    .line 591
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirection:I

    .line 592
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirectionListener:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirectionListener:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;->onUrlDirectionChanged(I)V

    goto :goto_0

    .line 584
    :cond_3
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    move v0, v1

    .line 587
    goto :goto_1
.end method

.method private validateSelection(II)Z
    .locals 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 406
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 407
    if-ltz v0, :cond_2

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    .line 410
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->clearSpan()V

    .line 419
    if-gt p2, v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 420
    :cond_1
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bringPointIntoView(I)Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextScrollingFromAutocomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->bringPointIntoView(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deEmphasizeUrl()V
    .locals 1

    .prologue
    .line 1090
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->deEmphasizeUrl(Landroid/text/Spannable;)V

    .line 1091
    return-void
.end method

.method public emphasizeUrl()V
    .locals 7

    .prologue
    .line 1059
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1060
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->hasEmphasisSpans(Landroid/text/Spannable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1070
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 1071
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1073
    const/4 v4, 0x0

    .line 1075
    :try_start_0
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1076
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isInternalScheme(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1081
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v3

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUseDarkColors:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v6}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->shouldEmphasizeHttpsScheme()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->emphasizeUrl(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutocompleteLength()I
    .locals 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 799
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getFirstFocusTime()J
    .locals 2

    .prologue
    .line 445
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFirstFocusTimeMs:J

    return-wide v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTextWithoutAutocomplete()Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 328
    if-gez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected hasAutocomplete()Z
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mAutocompleteText:Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->access$100(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mUserText:Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->access$200(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorAtEndOfTypedText()Z
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v2

    .line 302
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionEnd()I

    move-result v3

    .line 304
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 305
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 306
    if-gez v0, :cond_0

    move v0, v1

    .line 310
    :cond_0
    if-ne v2, v0, :cond_1

    if-ne v3, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandlingBatchInput()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z

    return v0
.end method

.method public isPastedText()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mIsPastedText:Z

    return v0
.end method

.method public onBeginBatchEdit()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mBeforeBatchEditLength:I

    .line 363
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onBeginBatchEdit()V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z

    .line 365
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 1052
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 552
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 554
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFirstDrawComplete:Z

    .line 560
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAllowFocus:Z

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setFocusable(Z)V

    .line 561
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAllowFocus:Z

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setFocusableInTouchMode(Z)V

    .line 564
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;->onOmniboxInteractive()V

    .line 570
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->updateUrlDirection()V

    .line 571
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 369
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onEndBatchEdit()V

    .line 370
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z

    .line 371
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->limitDisplayableLength()V

    .line 372
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mSelectionChangedInBatchMode:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionEnd()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->validateSelection(II)Z

    .line 374
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mSelectionChangedInBatchMode:Z

    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mBeforeBatchEditLength:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    .line 378
    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->notifyAutocompleteTextStateChanged(Z)V

    .line 379
    iput v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mBeforeBatchEditLength:I

    .line 380
    return-void

    :cond_1
    move v0, v1

    .line 377
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 427
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFocused:Z

    .line 428
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->onUrlPreFocusChanged(Z)V

    .line 429
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->clearSpan()V

    .line 430
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 432
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFirstFocusTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFirstFocusTimeMs:J

    .line 434
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;->onOmniboxFocused()V

    .line 437
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordFocusedOmnibox()V

    .line 438
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 944
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 946
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityTextOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityTextOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 496
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 497
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 510
    :goto_0
    return v0

    .line 502
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 504
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->backKeyPressed()V

    goto :goto_0

    .line 510
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOmniboxFullyFunctional()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;->onOmniboxFullyFunctional()V

    .line 643
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onPreDraw()Z

    move-result v0

    .line 539
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextScrollingFromAutocomplete:Z

    if-eqz v1, :cond_0

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextScrollingFromAutocomplete:Z

    .line 544
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->bringPointIntoView(I)Z

    .line 545
    const/4 v0, 0x1

    .line 547
    :cond_0
    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 384
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z

    if-nez v1, :cond_2

    .line 385
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 386
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->validateSelection(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 388
    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->notifyAutocompleteTextStateChanged(Z)V

    .line 393
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onSelectionChanged(II)V

    .line 394
    return-void

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mSelectionChangedInBatchMode:Z

    goto :goto_1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 832
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 833
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z

    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->limitDisplayableLength()V

    .line 835
    if-nez p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->notifyAutocompleteTextStateChanged(Z)V

    .line 837
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mIsPastedText:Z

    .line 838
    return-void

    :cond_1
    move v0, v1

    .line 835
    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 647
    const v0, 0x1020022

    if-ne p1, v0, :cond_2

    .line 648
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 650
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_2

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 653
    :goto_0
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 654
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxViewUtil;->sanitizeTextForPaste(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 659
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 661
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v0

    .line 663
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionEnd()I

    move-result v5

    .line 665
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 666
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    .line 669
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 670
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 671
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mIsPastedText:Z

    move v0, v3

    .line 705
    :goto_1
    return v0

    .line 676
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOriginalUrlLocation:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 677
    :cond_3
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 680
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v0

    .line 681
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionEnd()I

    move-result v2

    .line 685
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    if-nez v0, :cond_7

    const v0, 0x1020020

    if-eq p1, v0, :cond_5

    const v0, 0x1020021

    if-ne p1, v0, :cond_7

    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_7

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOriginalUrlLocation:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOriginalUrlLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 694
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    .line 695
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setText(Ljava/lang/CharSequence;)V

    .line 696
    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(II)V

    .line 697
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onTextContextMenuItem(I)Z

    move-result v0

    .line 698
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 699
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setText(Ljava/lang/CharSequence;)V

    .line 700
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    .line 702
    :cond_6
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    goto/16 :goto_1

    .line 705
    :cond_7
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFocused:Z

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 517
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionMode()V

    .line 527
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onWindowFocusChanged(Z)V

    .line 468
    if-eqz p1, :cond_1

    .line 469
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mShowKeyboardOnWindowFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlBar$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$2;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mShowKeyboardOnWindowFocus:Z

    .line 482
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onWindowVisibilityChanged(I)V

    .line 462
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mShowKeyboardOnWindowFocus:Z

    .line 463
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 933
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextAccessibilityEvents:Z

    if-eqz v0, :cond_1

    .line 934
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityTextOverride(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityTextOverride:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public setAllowFocus(Z)V
    .locals 1

    .prologue
    .line 452
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAllowFocus:Z

    .line 453
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFirstDrawComplete:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setFocusable(Z)V

    .line 455
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setFocusableInTouchMode(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 748
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 750
    if-nez v0, :cond_0

    iput-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextScrollingFromAutocomplete:Z

    .line 752
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 754
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v2

    .line 755
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 757
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    .line 758
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextAccessibilityEvents:Z

    .line 760
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 763
    invoke-static {v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_4

    .line 764
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v3, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->append(Ljava/lang/CharSequence;)V

    .line 770
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionStart()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 772
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(II)V

    .line 774
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 783
    :cond_3
    if-eqz v0, :cond_5

    .line 784
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->clearSpan()V

    .line 789
    :goto_1
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setIgnoreTextChangesForAutocomplete(Z)V

    .line 790
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextAccessibilityEvents:Z

    .line 791
    return-void

    .line 766
    :cond_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 786
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->setSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setDelegate(Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    .line 625
    return-void
.end method

.method public setIgnoreTextChangesForAutocomplete(Z)V
    .locals 1

    .prologue
    .line 283
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlBarDelegate:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mIgnoreAutocomplete:Z

    .line 286
    return-void
.end method

.method public setOmniboxLivenessListener(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOmniboxLivenessListener:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxLivenessListener;

    .line 635
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 5

    .prologue
    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDisableTextScrollingFromAutocomplete:Z

    .line 849
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityTextOverride:Ljava/lang/String;

    .line 855
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mUserText:Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->access$200(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mAutocompleteText:Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->access$100(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 861
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 862
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mUserText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->access$200(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 863
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mAutocompleteText:Ljava/lang/CharSequence;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->access$100(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 864
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    .line 867
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 870
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->clearSpan()V

    .line 874
    :cond_2
    return-void
.end method

.method public setUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getUrlContentsPrePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    .line 721
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getUrlContentsPrePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOriginalUrlLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 734
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->scrollToTLD()V

    .line 738
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 724
    :catch_0
    move-exception v0

    iput-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOriginalUrlLocation:Ljava/lang/String;

    .line 725
    iput-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    goto :goto_0

    .line 728
    :cond_1
    iput-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mOriginalUrlLocation:Ljava/lang/String;

    .line 729
    iput-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mFormattedUrlLocation:Ljava/lang/String;

    move-object p2, p1

    .line 730
    goto :goto_0

    .line 738
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setUrlDirectionListener(Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;)V
    .locals 2

    .prologue
    .line 613
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirectionListener:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;

    .line 614
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirectionListener:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirectionListener:Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUrlDirection:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;->onUrlDirectionChanged(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public setUseDarkTextColors(Z)V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUseDarkColors:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUseDarkColors:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUseDarkColors:Ljava/lang/Boolean;

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mUseDarkColors:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDarkDefaultTextColor:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setTextColor(I)V

    .line 245
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDarkHighlightColor:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setHighlightColor(I)V

    .line 254
    :goto_1
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_2
    if-eqz p1, :cond_5

    .line 261
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mDarkHintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->deEmphasizeUrl()V

    .line 269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->emphasizeUrl()V

    goto :goto_0

    .line 247
    :cond_4
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLightDefaultTextColor:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setTextColor(I)V

    .line 248
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLightHighlightColor:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setHighlightColor(I)V

    goto :goto_1

    .line 263
    :cond_5
    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLightHintColor:I

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setHintTextColor(I)V

    goto :goto_2
.end method

.method public shouldAutocomplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar;->mLastUrlEditWasDelete:Z

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isCursorAtEndOfTypedText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isPastedText()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isHandlingBatchInput()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
