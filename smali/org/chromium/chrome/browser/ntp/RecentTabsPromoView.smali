.class public Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;
.super Landroid/widget/FrameLayout;
.source "RecentTabsPromoView.java"

# interfaces
.implements Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFadeAnimation:Landroid/animation/Animator;

.field private mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

.field private mPromo:Landroid/view/View;

.field private mPromoType:I

.field private mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromoType:I

    .line 130
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    .line 131
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mActivity:Landroid/app/Activity;

    .line 132
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    .line 133
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->recent_tabs_promo_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 134
    invoke-virtual {p0, v0, v2, v0, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->setPadding(IIII)V

    .line 135
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mUserActionListener:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private configureForSyncState(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->getDesiredPromoType()I

    move-result v2

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromoType:I

    if-ne v0, v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    move p1, v1

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromoType:I

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->switchToSignedMode()V

    .line 183
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    .line 184
    iput v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromoType:I

    .line 185
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->createPromoView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    .line 187
    if-eqz p1, :cond_3

    .line 190
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 191
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->addView(Landroid/view/View;)V

    .line 194
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    .line 195
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 196
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    new-instance v2, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createPromoView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->createSignInPromoView()Landroid/view/View;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->createSyncPromoView(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createSignInPromoView()Landroid/view/View;
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->account_signin_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountSigninView;

    .line 255
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->init(Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;)V

    .line 256
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->configureForRecentTabsOrBookmarksPage()V

    .line 259
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$3;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setListener(Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;)V

    .line 287
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$4;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->setDelegate(Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;)V

    .line 293
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->getAccessPoint()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->logSigninStartAccessPoint(I)V

    .line 294
    return-object v0
.end method

.method private createSyncPromoView(Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->recent_tabs_sync_promo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 231
    sget v0, Lorg/chromium/chrome/R$id;->text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    sget v2, Lorg/chromium/chrome/R$id;->enable_sync_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 234
    if-eqz p1, :cond_0

    .line 235
    sget v3, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_sync_promo_instructions:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 236
    const v3, -0x5f5f60

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :goto_0
    return-object v1

    .line 239
    :cond_0
    sget v3, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_sync_enable_sync:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const v3, -0xcccccd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$2;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getDesiredPromoType()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public androidSyncSettingsChanged()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->configureForSyncState(Z)V

    .line 162
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->registerForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->configureForSyncState(Z)V

    .line 142
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->unregisterForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 148
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->configureForSyncState(Z)V

    .line 156
    :cond_0
    return-void
.end method
