.class public Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
.super Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
.source "TabDelegate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mIsIncognito:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;-><init>()V

    .line 41
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->mIsIncognito:Z

    .line 42
    return-void
.end method


# virtual methods
.method public createFrozenTab(Lorg/chromium/chrome/browser/TabState;II)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->isIncognito()Z

    move-result v2

    const/4 v4, -0x1

    move v0, p2

    move-object v3, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/tab/Tab;->createFrozenTabFromState(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;ILorg/chromium/chrome/browser/TabState;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 3

    .prologue
    .line 97
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 100
    const-string/jumbo v0, "chrome-native://newtab/"

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentLaunchMode(I)V

    .line 113
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    const-string/jumbo v0, "chrome-native://newtab/"

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    .line 124
    :cond_1
    :goto_1
    if-nez p3, :cond_7

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p0, v1, p2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createNewTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;I)V

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_0

    .line 103
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->mIsIncognito:Z

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentLaunchMode(I)V

    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentLaunchMode(I)V

    goto :goto_0

    .line 116
    :cond_4
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p2, v0, :cond_5

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_6

    .line 118
    :cond_5
    const/16 v0, 0xc9

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    goto :goto_1

    .line 119
    :cond_6
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_1

    .line 120
    const/16 v0, 0xca

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    goto :goto_1

    .line 124
    :cond_7
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_2
.end method

.method public createNewTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;I)V
    .locals 6

    .prologue
    .line 136
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-static {p3}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getActivityForTabId(I)Landroid/app/Activity;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->isAllowedToLaunchDocumentActivity(Landroid/content/Context;)Z

    move-result v2

    .line 146
    sget-boolean v3, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_2
    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 149
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->getInstance()Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->mIsIncognito:Z

    invoke-virtual {v0, v1, p3, p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->enqueueLaunch(ZILorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)V

    .line 174
    :goto_0
    return-void

    .line 152
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/tab/TabIdManager;->generateValidId(I)I

    move-result v2

    .line 153
    invoke-static {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->add(ILorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V

    .line 155
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    const-class v4, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v4, "com.android.chrome.tab_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string/jumbo v2, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->mIsIncognito:Z

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string/jumbo v2, "com.android.chrome.parent_tab_id"

    invoke-virtual {v3, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 163
    const-string/jumbo v2, "com.android.chrome.parent_intent"

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    :cond_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getRequestId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 167
    const-string/jumbo v1, "org.chromium.components.service_tab_launcher.ServiceTabLauncher.LAUNCH_REQUEST_ID"

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->getRequestId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    :cond_5
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/IntentHandler;->startActivityForTrustedIntent(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 63
    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createTabWithWebContents(Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public createTabWithWebContents(Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 77
    if-nez p4, :cond_0

    const-string/jumbo p4, ""

    .line 80
    :cond_0
    const/16 v0, 0x66

    if-ne p5, v0, :cond_1

    const/16 v0, 0x8

    .line 83
    :goto_0
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v2, p4, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, p1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/content_public/browser/WebContents;)V

    .line 85
    invoke-virtual {v1, p5}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    .line 86
    invoke-virtual {p0, v1, p3, p2}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createNewTab(Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;I)V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public createsTabsAsynchronously()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected isAllowedToLaunchDocumentActivity(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method
