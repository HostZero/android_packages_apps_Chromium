.class public Lorg/chromium/chrome/browser/signin/AccountSigninView;
.super Lorg/chromium/chrome/browser/firstrun/FirstRunView;
.source "AccountSigninView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;
.implements Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNames:Ljava/util/List;

.field private mAddAnotherAccount:Ljava/lang/String;

.field private mArrayAdapter:Landroid/widget/ArrayAdapter;

.field private mCancelButtonTextId:I

.field private mConfirmAccountEmail:Landroid/widget/TextView;

.field private mDelegate:Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mDescriptionTextId:I

.field private mDynamicPaddingEnabled:Z

.field private mForcedAccountName:Ljava/lang/String;

.field private mHorizontalModeEnabled:Z

.field private mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

.field private mIsChildAccount:Z

.field private mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositionSetProgrammatically:Z

.field private mPositiveButton:Landroid/widget/Button;

.field private mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

.field private mShowSettingsSpan:Z

.field private mSignedIn:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerBackground:Landroid/graphics/drawable/Drawable;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mHorizontalModeEnabled:Z

    .line 153
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDynamicPaddingEnabled:Z

    .line 154
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mShowSettingsSpan:Z

    .line 158
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAddAnotherAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPageAccountTrackerServiceCheck()V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/signin/AccountSigninView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showSigninPage()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositionSetProgrammatically:Z

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/signin/AccountSigninView;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositionSetProgrammatically:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/firstrun/ImageCarousel;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPagePreviousAccountCheck()V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPage()V

    return-void
.end method

.method private configureSpinner(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 463
    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mConfirmAccountEmail:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mConfirmAccountEmail:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    return-void

    :cond_0
    move v0, v2

    .line 463
    goto :goto_0

    :cond_1
    move v2, v1

    .line 464
    goto :goto_1
.end method

.method private static getIndexOfNewElement(Ljava/util/List;Ljava/util/List;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 402
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, p2

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 405
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 406
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v0

    goto :goto_0

    .line 405
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSignedInDescription(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 624
    if-eqz p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->signin_signed_in_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->signin_signed_in_description_uca_addendum:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->signin_signed_in_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setNegativeButtonVisible(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 614
    if-eqz p1, :cond_0

    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    sget v0, Lorg/chromium/chrome/R$id;->positive_button_end_padding:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 621
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 619
    sget v0, Lorg/chromium/chrome/R$id;->positive_button_end_padding:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUpCancelButton()V
    .locals 3

    .prologue
    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setNegativeButtonVisible(Z)V

    .line 559
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mCancelButtonTextId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$5;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    return-void
.end method

.method private setUpConfirmButton()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->signin_accept:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$9;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$9;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    return-void
.end method

.method private setUpSigninButton(Z)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    sget v1, Lorg/chromium/chrome/R$string;->choose_account_sign_in:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 571
    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$6;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$6;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$7;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$7;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setUpUndoButton()V
    .locals 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->isInForcedAccountMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setNegativeButtonVisible(Z)V

    .line 591
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->isInForcedAccountMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    :goto_1
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->undo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$8;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$8;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private showConfirmSigninPage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 482
    iput-boolean v8, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSignedIn:Z

    .line 483
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateProfileName()V

    .line 485
    invoke-direct {p0, v7}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->configureSpinner(Z)V

    .line 486
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setUpConfirmButton()V

    .line 487
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setUpUndoButton()V

    .line 489
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mShowSettingsSpan:Z

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountSigninView$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$2;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    .line 502
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mIsChildAccount:Z

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getSignedInDescription(Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<LINK1>"

    const-string/jumbo v6, "</LINK1>"

    invoke-direct {v4, v5, v6, v0}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setSignedInMode(Z)V

    .line 513
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mIsChildAccount:Z

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getSignedInDescription(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<LINK1>"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "</LINK1>"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showConfirmSigninPageAccountTrackerServiceCheck()V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->checkAndSeedSystemAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPagePreviousAccountCheck()V

    .line 534
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$3;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->addSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V

    goto :goto_0
.end method

.method private showConfirmSigninPagePreviousAccountCheck()V
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninInvestigator;->investigate(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 540
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getSyncLastAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    sget-object v2, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->PREVIOUS_DATA_FOUND:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDelegate:Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lorg/chromium/chrome/browser/signin/AccountSigninView$4;

    invoke-direct {v4, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$4;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->showNewInstance(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;Landroid/app/FragmentManager;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;)V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPage()V

    goto :goto_0
.end method

.method private showSigninPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSignedIn:Z

    .line 470
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mTitle:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->sign_in_to_chrome:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->configureSpinner(Z)V

    .line 473
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setVisibility(I)V

    .line 475
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setUpCancelButton()V

    .line 476
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateAccounts()Z

    .line 478
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setSignedInMode(Z)V

    .line 479
    return-void
.end method

.method private updateAccounts()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSignedIn:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 385
    :goto_0
    return v0

    .line 348
    :cond_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccountNames()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    .line 351
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->isInForcedAccountMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mForcedAccountName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 353
    if-gez v0, :cond_6

    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mForcedAccountName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;->onFailedToSetForcedAccount(Ljava/lang/String;)V

    move v0, v2

    .line 355
    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v4, v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getIndexOfNewElement(Ljava/util/List;Ljava/util/List;I)I

    move-result v0

    move v1, v0

    .line 362
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 363
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 364
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAddAnotherAccount:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 368
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setUpSigninButton(Z)V

    .line 369
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionText:Landroid/widget/TextView;

    iget v5, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionTextId:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 378
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->update()V

    .line 379
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateProfileImages()V

    .line 381
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->scrollTo(FZZ)V

    .line 385
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v3

    goto/16 :goto_0

    .line 372
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAddAnotherAccount:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 374
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setUpSigninButton(Z)V

    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionText:Landroid/widget/TextView;

    sget v5, Lorg/chromium/chrome/R$string;->signin_no_account_choice_description:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 385
    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method private updateProfileImages()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 424
    if-nez v3, :cond_1

    .line 425
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 426
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 434
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setImages([Landroid/graphics/Bitmap;)V

    .line 435
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateProfileName()V

    goto :goto_0

    .line 428
    :cond_1
    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 429
    :goto_2
    if-ge v2, v3, :cond_2

    .line 430
    iget-object v4, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    .line 429
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private updateProfileName()V
    .locals 4

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSignedIn:Z

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-eqz v1, :cond_2

    .line 443
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mIsChildAccount:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->getGivenName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->getFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    .line 447
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->signin_hi_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public configureForAddAccountPromo()V
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lorg/chromium/chrome/browser/signin/SigninManager;->getAndroidSigninPromoExperimentGroup()I

    move-result v1

    .line 290
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz v1, :cond_0

    const/4 v0, 0x7

    if-le v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_1
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mTitle:Landroid/widget/TextView;

    sget v2, Lorg/chromium/chrome/R$string;->make_chrome_yours:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :cond_2
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_4

    sget v0, Lorg/chromium/chrome/R$string;->signin_sign_in_to_chrome_summary_variant:I

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionTextId:I

    .line 300
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setVisibility(I)V

    .line 303
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 304
    sget v0, Lorg/chromium/chrome/R$drawable;->signin_promo_illustration:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->illustration_background_color:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 308
    sget v0, Lorg/chromium/chrome/R$id;->fre_main_layout:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 309
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 311
    :cond_3
    return-void

    .line 296
    :cond_4
    sget v0, Lorg/chromium/chrome/R$string;->sign_in_to_chrome_summary:I

    goto :goto_0
.end method

.method public configureForRecentTabsOrBookmarksPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mHorizontalModeEnabled:Z

    .line 271
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDynamicPaddingEnabled:Z

    .line 272
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mShowSettingsSpan:Z

    .line 274
    sget v0, Lorg/chromium/chrome/R$color;->ntp_bg:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setBackgroundResource(I)V

    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mTitle:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->sign_in_to_chrome:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    sget v0, Lorg/chromium/chrome/R$string;->cancel:I

    iput v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mCancelButtonTextId:I

    .line 278
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setUpCancelButton()V

    .line 280
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->sign_in_promo_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v2, v2, v2, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setPadding(IIII)V

    .line 282
    return-void
.end method

.method public init(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setProfileDataCache(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V

    .line 167
    return-void
.end method

.method protected isDynamicPaddingEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDynamicPaddingEnabled:Z

    return v0
.end method

.method protected isHorizontalModeEnabled()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mHorizontalModeEnabled:Z

    return v0
.end method

.method public isInForcedAccountMode()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mForcedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSignedIn:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->onAttachedToWindow()V

    .line 238
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateAccounts()Z

    .line 239
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->onFinishInflate()V

    .line 183
    sget v0, Lorg/chromium/chrome/R$id;->image:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->setListener(Lorg/chromium/chrome/browser/firstrun/ImageCarousel$ImageCarouselPositionChangeListener;)V

    .line 186
    sget v0, Lorg/chromium/chrome/R$id;->positive_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    .line 187
    sget v0, Lorg/chromium/chrome/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    .line 190
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->fre_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    invoke-static {v1, v0, v2, v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 192
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    invoke-static {v1, v0, v2, v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 194
    sget v0, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mTitle:Landroid/widget/TextView;

    .line 195
    sget v0, Lorg/chromium/chrome/R$id;->description:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionText:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 198
    sget v0, Lorg/chromium/chrome/R$string;->signin_account_choice_description:I

    iput v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDescriptionTextId:I

    .line 201
    sget v0, Lorg/chromium/chrome/R$string;->no_thanks:I

    iput v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mCancelButtonTextId:I

    .line 203
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->signin_add_account:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAddAnotherAccount:Ljava/lang/String;

    .line 205
    sget v0, Lorg/chromium/chrome/R$id;->confirm_account_email:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mConfirmAccountEmail:Landroid/widget/TextView;

    .line 206
    sget v0, Lorg/chromium/chrome/R$id;->google_accounts_spinner:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinnerBackground:Landroid/graphics/drawable/Drawable;

    .line 208
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->fre_spinner_text:I

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lorg/chromium/chrome/R$layout;->fre_spinner_dropdown:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;Lorg/chromium/chrome/browser/signin/AccountSigninView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/chromium/chrome/browser/signin/AccountSigninView$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$1;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 232
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showSigninPage()V

    .line 233
    return-void
.end method

.method public onPositionChanged(I)V
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositionSetProgrammatically:Z

    .line 668
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 669
    return-void
.end method

.method public onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateProfileImages()V

    .line 416
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/firstrun/FirstRunView;->onWindowVisibilityChanged(I)V

    .line 244
    if-nez p1, :cond_0

    .line 245
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPageAccountTrackerServiceCheck()V

    .line 252
    :cond_0
    return-void
.end method

.method public setButtonsEnabled(Z)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    return-void
.end method

.method public setDelegate(Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mDelegate:Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;

    .line 338
    return-void
.end method

.method public setIsChildAccount(Z)V
    .locals 0

    .prologue
    .line 636
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mIsChildAccount:Z

    .line 637
    return-void
.end method

.method public setListener(Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    .line 330
    return-void
.end method

.method public setProfileDataCache(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mProfileData:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->setObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 176
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateProfileImages()V

    .line 177
    return-void
.end method

.method public switchToForcedAccountMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 644
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mForcedAccountName:Ljava/lang/String;

    .line 645
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->updateAccounts()Z

    .line 646
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mForcedAccountName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 647
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->switchToSignedMode()V

    .line 648
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView;->mForcedAccountName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 649
    :cond_1
    return-void
.end method

.method public switchToSignedMode()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPage()V

    .line 459
    return-void
.end method
