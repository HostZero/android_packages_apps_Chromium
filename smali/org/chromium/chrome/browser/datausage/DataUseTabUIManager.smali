.class public Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;
.super Ljava/lang/Object;
.source "DataUseTabUIManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->setOptedOutOfDataUseDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method public static checkAndResetDataUseTrackingEnded(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/sessions/SessionTabHelper;->sessionIdForTab(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->nativeCheckAndResetDataUseTrackingEnded(ILorg/chromium/chrome/browser/profiles/Profile;)Z

    move-result v0

    return v0
.end method

.method public static checkAndResetDataUseTrackingStarted(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/sessions/SessionTabHelper;->sessionIdForTab(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->nativeCheckAndResetDataUseTrackingStarted(ILorg/chromium/chrome/browser/profiles/Profile;)Z

    move-result v0

    return v0
.end method

.method public static getDataUseUIString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    sget-boolean v0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->nativeGetDataUseUIString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCheckAndResetDataUseTrackingEnded(ILorg/chromium/chrome/browser/profiles/Profile;)Z
.end method

.method private static native nativeCheckAndResetDataUseTrackingStarted(ILorg/chromium/chrome/browser/profiles/Profile;)Z
.end method

.method private static native nativeGetDataUseUIString(I)Ljava/lang/String;
.end method

.method private static native nativeOnCustomTabInitialNavigation(ILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;)V
.end method

.method private static native nativeUserClickedContinueOnDialogBox(ILorg/chromium/chrome/browser/profiles/Profile;)V
.end method

.method private static native nativeWouldDataUseTrackingEnd(ILjava/lang/String;ILorg/chromium/chrome/browser/profiles/Profile;)Z
.end method

.method public static onCustomTabInitialNavigation(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/sessions/SessionTabHelper;->sessionIdForTab(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->nativeOnCustomTabInitialNavigation(ILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 121
    return-void
.end method

.method public static recordDataUseUIAction(I)V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 245
    sget-boolean v0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 246
    :cond_1
    const-string/jumbo v0, "DataUsage.UIAction"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 249
    return-void
.end method

.method private static setOptedOutOfDataUseDialog(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 232
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "data_use_dialog_opt_out"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    if-eqz p1, :cond_0

    .line 236
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public static shouldOverrideUrlLoading(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {p0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->shouldShowDataUseEndedSnackbar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->wouldDataUseTrackingEnd(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->startDataUseDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowDataUseEndedSnackbar(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "data_use_dialog_opt_out"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ExternalDataUseObserver"

    const-string/jumbo v3, "disable_data_use_ended_dialog"

    invoke-static {v2, v3}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static startDataUseDialog(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 160
    sget v0, Lorg/chromium/chrome/R$layout;->data_use_dialog:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    sget v0, Lorg/chromium/chrome/R$id;->data_use_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    invoke-static {v9}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v0, Lorg/chromium/chrome/R$id;->data_use_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 164
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v0, Lorg/chromium/chrome/R$id;->learn_more:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    new-instance v3, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$1;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;-><init>(Landroid/app/Activity;Landroid/widget/CheckBox;Ljava/lang/String;ILjava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v7, v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    new-instance v3, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;

    invoke-direct {v3, p0, v2}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;-><init>(Landroid/app/Activity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 206
    invoke-static {v9}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 207
    return-void
.end method

.method public static userClickedContinueOnDialogBox(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/sessions/SessionTabHelper;->sessionIdForTab(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->nativeUserClickedContinueOnDialogBox(ILorg/chromium/chrome/browser/profiles/Profile;)V

    .line 82
    return-void
.end method

.method public static wouldDataUseTrackingEnd(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/sessions/SessionTabHelper;->sessionIdForTab(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->nativeWouldDataUseTrackingEnd(ILjava/lang/String;ILorg/chromium/chrome/browser/profiles/Profile;)Z

    move-result v0

    return v0
.end method
