.class public Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
.super Ljava/lang/Object;
.source "CustomTabIntentDataProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANIMATION_BUNDLE_PREFIX:Ljava/lang/String;

.field private static final BUNDLE_ENTER_ANIMATION_RESOURCE:Ljava/lang/String;

.field private static final BUNDLE_EXIT_ANIMATION_RESOURCE:Ljava/lang/String;

.field private static final BUNDLE_PACKAGE_NAME:Ljava/lang/String;

.field public static final EXTRA_IS_OPENED_BY_CHROME:Ljava/lang/String; = "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

.field public static final EXTRA_KEEP_ALIVE:Ljava/lang/String; = "android.support.customtabs.extra.KEEP_ALIVE"

.field public static final EXTRA_SHOW_STAR_ICON:Ljava/lang/String; = "org.chromium.chrome.browser.customtabs.SHOW_STAR_ICON"


# instance fields
.field private mAnimationBundle:Landroid/os/Bundle;

.field private mBottomBarColor:I

.field private mBottombarButtons:Ljava/util/List;

.field private mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

.field private mCustomButtonParams:Ljava/util/List;

.field private mEnableUrlBarHiding:Z

.field private mIsOpenedByChrome:Z

.field private final mKeepAliveServiceIntent:Landroid/content/Intent;

.field private mMenuEntries:Ljava/util/List;

.field private mOnFinished:Landroid/app/PendingIntent$OnFinished;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private final mSession:Landroid/os/IBinder;

.field private mShowBookmarkItem:Z

.field private mShowShareItem:Z

.field private final mTitleVisibilityState:I

.field private mToolbarButton:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

.field private mToolbarColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->$assertionsDisabled:Z

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "android:activity."

    :goto_1
    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->ANIMATION_BUNDLE_PREFIX:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->ANIMATION_BUNDLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->BUNDLE_PACKAGE_NAME:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->ANIMATION_BUNDLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "animEnterRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->BUNDLE_ENTER_ANIMATION_RESOURCE:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->ANIMATION_BUNDLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "animExitRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->BUNDLE_EXIT_ANIMATION_RESOURCE:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    const-string/jumbo v0, "android:"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    .line 99
    if-nez p1, :cond_0

    sget-boolean v0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    const-string/jumbo v0, "android.support.customtabs.extra.SESSION"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBinderExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mSession:Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->parseHerbExtras(Landroid/content/Intent;Landroid/content/Context;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->retrieveCustomButtons(Landroid/content/Intent;Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->retrieveToolbarColor(Landroid/content/Intent;Landroid/content/Context;)V

    .line 105
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->retrieveBottomBarColor(Landroid/content/Intent;)V

    .line 106
    const-string/jumbo v0, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mEnableUrlBarHiding:Z

    .line 108
    const-string/jumbo v0, "android.support.customtabs.extra.KEEP_ALIVE"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mKeepAliveServiceIntent:Landroid/content/Intent;

    .line 110
    const-string/jumbo v0, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 112
    if-eqz v0, :cond_1

    invoke-direct {p0, p2, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->checkCloseButtonSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    const/4 v0, 0x0

    .line 116
    :cond_1
    if-nez v0, :cond_3

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_close:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 123
    :goto_0
    const-string/jumbo v0, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_4

    move v1, v2

    .line 126
    :goto_1
    const/4 v0, 0x5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 127
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 128
    const-string/jumbo v4, "android.support.customtabs.customaction.MENU_ITEM_TITLE"

    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string/jumbo v5, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-static {v0, v5}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    .line 133
    iget-object v5, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 120
    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 137
    :cond_4
    const-string/jumbo v0, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    .line 139
    const-string/jumbo v0, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mTitleVisibilityState:I

    .line 141
    const-string/jumbo v0, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mShowShareItem:Z

    .line 143
    const-string/jumbo v0, "android.support.customtabs.extra.EXTRA_SECONDARY_TOOLBAR_REMOTEVIEWS"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 145
    return-void
.end method

.method private checkCloseButtonSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->toolbar_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 393
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseHerbExtras(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Disabled"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/IntentHandler;->isIntentChromeOrFirstParty(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string/jumbo v0, "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mIsOpenedByChrome:Z

    .line 429
    const-string/jumbo v0, "org.chromium.chrome.browser.customtabs.SHOW_STAR_ICON"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mShowBookmarkItem:Z

    goto :goto_0
.end method

.method private removeTransparencyFromColor(II)I
    .locals 1

    .prologue
    .line 190
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    .line 191
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return p2

    :cond_0
    move p2, v0

    goto :goto_0
.end method

.method private retrieveBottomBarColor(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mToolbarColor:I

    .line 180
    const-string/jumbo v1, "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

    invoke-static {p1, v1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 182
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->removeTransparencyFromColor(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mBottomBarColor:I

    .line 183
    return-void
.end method

.method private retrieveCustomButtons(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 152
    invoke-static {p2, p1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCustomButtonParams:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCustomButtonParams:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCustomButtonParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    .line 155
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->showOnToolbar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mToolbarButton:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method private retrieveToolbarColor(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    .line 170
    const-string/jumbo v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-static {p1, v1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 172
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->removeTransparencyFromColor(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mToolbarColor:I

    .line 173
    return-void
.end method


# virtual methods
.method public clickMenuItemWithUrl(Lorg/chromium/chrome/browser/ChromeActivity;ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 330
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 331
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 333
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 334
    const/4 v2, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mOnFinished:Landroid/app/PendingIntent$OnFinished;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CustomTabIntentData"

    const-string/jumbo v1, "Custom tab in Chrome failed to send pending intent."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAnimationEnterRes()I
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldAnimateOnFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->BUNDLE_ENTER_ANIMATION_RESOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationExitRes()I
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->shouldAnimateOnFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->BUNDLE_EXIT_ANIMATION_RESOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomBarColor()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mBottomBarColor:I

    return v0
.end method

.method public getBottomBarRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getButtonParamsForId(I)Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCustomButtonParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    .line 308
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 310
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    sget-object v1, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->BUNDLE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCustomButtonOnToolbar()Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mToolbarButton:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    return-object v0
.end method

.method public getCustomButtonsOnBottombar()Ljava/util/List;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    return-object v0
.end method

.method public getKeepAliveServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mKeepAliveServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMenuTitles()Ljava/util/List;
    .locals 3

    .prologue
    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 319
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_0
    return-object v1
.end method

.method public getSession()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mSession:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTitleVisibilityState()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mTitleVisibilityState:I

    return v0
.end method

.method public getToolbarColor()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mToolbarColor:I

    return v0
.end method

.method isOpenedByChrome()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mIsOpenedByChrome:Z

    return v0
.end method

.method public sendButtonPendingIntentWithUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 381
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 382
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getCustomButtonOnToolbar()Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mOnFinished:Landroid/app/PendingIntent$OnFinished;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CustomTabIntentData"

    const-string/jumbo v1, "CanceledException while sending pending intent in custom tab"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setPendingIntentOnFinishedForTesting(Landroid/app/PendingIntent$OnFinished;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mOnFinished:Landroid/app/PendingIntent$OnFinished;

    .line 404
    return-void
.end method

.method public shouldAnimateOnFinish()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldEnableUrlBarHiding()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mEnableUrlBarHiding:Z

    return v0
.end method

.method public shouldShowBookmarkMenuItem()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mShowBookmarkItem:Z

    return v0
.end method

.method public shouldShowBottomBar()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowShareMenuItem()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->mShowShareItem:Z

    return v0
.end method
