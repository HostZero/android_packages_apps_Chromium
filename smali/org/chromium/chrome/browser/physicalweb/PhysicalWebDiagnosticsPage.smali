.class public Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;
.super Ljava/lang/Object;
.source "PhysicalWebDiagnosticsPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/NativePage;


# instance fields
.field private final mBackgroundColor:I

.field private final mContext:Landroid/content/Context;

.field private final mDiagnosticsText:Landroid/widget/TextView;

.field private final mFailureColor:Ljava/lang/String;

.field private final mIndeterminateColor:Ljava/lang/String;

.field private final mLaunchButton:Landroid/widget/Button;

.field private final mPageView:Landroid/view/View;

.field private final mSuccessColor:Ljava/lang/String;

.field private final mThemeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    sget v1, Lorg/chromium/chrome/R$color;->ntp_bg:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mBackgroundColor:I

    .line 55
    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mThemeColor:I

    .line 56
    sget v1, Lorg/chromium/chrome/R$color;->physical_web_diags_success_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->colorToHexValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mSuccessColor:Ljava/lang/String;

    .line 58
    sget v1, Lorg/chromium/chrome/R$color;->physical_web_diags_failure_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->colorToHexValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mFailureColor:Ljava/lang/String;

    .line 60
    sget v1, Lorg/chromium/chrome/R$color;->physical_web_diags_indeterminate_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->colorToHexValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mIndeterminateColor:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    sget v1, Lorg/chromium/chrome/R$layout;->physical_web_diagnostics:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mPageView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mPageView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->physical_web_launch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mLaunchButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mLaunchButton:Landroid/widget/Button;

    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mPageView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->physical_web_diagnostics_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mDiagnosticsText:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mDiagnosticsText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mDiagnosticsText:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->createDiagnosticsReportHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private appendPrerequisitesReport(Ljava/lang/StringBuilder;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 106
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->isSdkVersionCorrect()Z

    move-result v4

    .line 107
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->isDataConnectionActive()Z

    move-result v5

    .line 108
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->getBluetoothEnabledStatus()I

    move-result v2

    .line 109
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->isLocationServicesEnabled()Z

    move-result v7

    .line 110
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->isLocationPermissionGranted()Z

    move-result v8

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isPhysicalWebPreferenceEnabled(Landroid/content/Context;)Z

    move-result v9

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isOnboarding(Landroid/content/Context;)Z

    move-result v10

    .line 115
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    if-nez v9, :cond_3

    :cond_0
    move v0, v3

    .line 123
    :goto_0
    const-string/jumbo v11, "<h2>Status</h2>"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v11, "Physical Web is "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    if-eqz v0, :cond_4

    :goto_1
    const-string/jumbo v0, "ON"

    const-string/jumbo v3, "OFF"

    invoke-direct {p0, p1, v1, v0, v3}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "<h2>Prerequisites</h2>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v0, "Android SDK version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v0, "Compatible"

    const-string/jumbo v1, "Incompatible"

    invoke-direct {p0, p1, v4, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "Data connection: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v0, "Connected"

    const-string/jumbo v1, "Not connected"

    invoke-direct {p0, p1, v5, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "Location services: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v0, "Enabled"

    const-string/jumbo v1, "Disabled"

    invoke-direct {p0, p1, v7, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 140
    const-string/jumbo v0, "Location app permission: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v0, "Granted"

    const-string/jumbo v1, "Not granted"

    invoke-direct {p0, p1, v8, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    const-string/jumbo v0, "Physical Web privacy settings: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    if-eqz v10, :cond_5

    const-string/jumbo v0, "Default (off)"

    .line 146
    :goto_2
    const-string/jumbo v1, "On"

    invoke-direct {p0, p1, v9, v1, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "Bluetooth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v3, "Enabled"

    const-string/jumbo v4, "Disabled"

    const-string/jumbo v5, "Unknown"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-ne v2, v6, :cond_2

    .line 154
    const-string/jumbo v0, "<br/>To verify Bluetooth is enabled on this device, check that the Bluetooth icon is shown in the status bar."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    return-void

    .line 119
    :cond_3
    if-ne v2, v6, :cond_6

    move v0, v6

    .line 120
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 126
    goto/16 :goto_1

    .line 145
    :cond_5
    const-string/jumbo v0, "Off"

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method private appendResult(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 89
    if-ne p2, v4, :cond_1

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mSuccessColor:Ljava/lang/String;

    .line 102
    :goto_0
    const-string/jumbo v1, "<font color=\"%s\">%s</font><br/>"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    return-void

    .line 92
    :cond_1
    if-nez p2, :cond_2

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mFailureColor:Ljava/lang/String;

    move-object p3, p4

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    if-ne p2, v2, :cond_0

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mIndeterminateColor:Ljava/lang/String;

    move-object p3, p5

    .line 97
    goto :goto_0
.end method

.method private appendResult(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 81
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 82
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendResult(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private appendUrlManagerReport(Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedNearbyUrls()Ljava/util/Set;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedResolvedUrls()Ljava/util/Set;

    move-result-object v2

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    const-string/jumbo v3, "<h2>Nearby web pages</h2>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const-string/jumbo v0, "No nearby web pages found<br/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 174
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    if-nez v4, :cond_3

    .line 178
    const-string/jumbo v0, " : LOST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    :goto_1
    const-string/jumbo v0, "<br/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :cond_3
    if-nez v5, :cond_2

    .line 180
    const-string/jumbo v0, " : UNRESOLVED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static colorToHexValue(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0xffffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDiagnosticsReportHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendPrerequisitesReport(Ljava/lang/StringBuilder;)V

    .line 190
    const-string/jumbo v1, "<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->appendUrlManagerReport(Ljava/lang/StringBuilder;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    const-string/jumbo v1, "referer"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    return-object v0
.end method

.method private getBluetoothEnabledStatus()I
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x2

    .line 213
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->isBluetoothPermissionGranted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBluetoothPermissionGranted()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataConnectionActive()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 202
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocationPermissionGranted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/customtabs/a;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocationServicesEnabled()Z
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 222
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 223
    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 224
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSdkVersionCorrect()Z
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mBackgroundColor:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string/jumbo v0, "physical-web"

    return-object v0
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mThemeColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string/jumbo v0, "Physical Web Diagnostics"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string/jumbo v0, "chrome-native://physical-web/"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mPageView:Landroid/view/View;

    return-object v0
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method
