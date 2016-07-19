.class public Lorg/chromium/chrome/browser/document/DocumentUma;
.super Ljava/lang/Object;
.source "DocumentUma.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordInDocumentMode(Z)V
    .locals 3

    .prologue
    .line 26
    const-string/jumbo v1, "DocumentActivity.RunningMode"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 28
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static recordStartedBy(I)V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "DocumentActivity.StartedBy"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method static recordStartedBy(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v1, 0x190

    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordStartedBy(I)V

    .line 97
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->determineExternalIntentSource(Ljava/lang/String;Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "com.android.chrome.started_by"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 46
    const-string/jumbo v3, "com.android.chrome.started_by"

    invoke-static {p1, v3, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 85
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 86
    const-string/jumbo v3, "DocumentUma"

    const-string/jumbo v4, "Unknown source detected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    if-lt v0, v1, :cond_3

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_3

    .line 92
    const-string/jumbo v1, "MobileIntent.PageLoadDueToExternalApp"

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->ordinal()I

    move-result v2

    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->INDEX_BOUNDARY:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 96
    :cond_3
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordStartedBy(I)V

    goto :goto_0

    .line 48
    :cond_4
    const-string/jumbo v3, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    invoke-static {p1, v3, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    const/4 v0, 0x1

    goto :goto_1

    .line 52
    :cond_5
    const-string/jumbo v3, "com.android.chrome.append_task"

    invoke-static {p1, v3, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 54
    const/16 v0, 0x12c

    goto :goto_1

    .line 55
    :cond_6
    const-string/jumbo v3, "com.android.chrome.preserve_task"

    invoke-static {p1, v3, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 58
    const/16 v0, 0x12d

    goto :goto_1

    .line 59
    :cond_7
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GMAIL:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_8

    move v0, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_8
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->FACEBOOK:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_9

    .line 62
    const/16 v0, 0x191

    goto :goto_1

    .line 63
    :cond_9
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->PLUS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_a

    .line 64
    const/16 v0, 0x192

    goto :goto_1

    .line 65
    :cond_a
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->TWITTER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_b

    .line 66
    const/16 v0, 0x193

    goto :goto_1

    .line 67
    :cond_b
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->CHROME:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_c

    .line 68
    const/16 v0, 0x194

    goto :goto_1

    .line 69
    :cond_c
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->HANGOUTS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_d

    .line 70
    const/16 v0, 0x196

    goto :goto_1

    .line 71
    :cond_d
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->MESSENGER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_e

    .line 72
    const/16 v0, 0x197

    goto :goto_1

    .line 73
    :cond_e
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->NEWS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_f

    .line 74
    const/16 v0, 0x198

    goto :goto_1

    .line 75
    :cond_f
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->LINE:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_10

    .line 76
    const/16 v0, 0x199

    goto/16 :goto_1

    .line 77
    :cond_10
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->WHATSAPP:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_11

    .line 78
    const/16 v0, 0x19a

    goto/16 :goto_1

    .line 79
    :cond_11
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GSA:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_12

    .line 80
    const/16 v0, 0x19b

    goto/16 :goto_1

    .line 81
    :cond_12
    sget-object v3, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->OTHER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    if-ne v2, v3, :cond_1

    .line 82
    const/16 v0, 0x195

    goto/16 :goto_1
.end method
