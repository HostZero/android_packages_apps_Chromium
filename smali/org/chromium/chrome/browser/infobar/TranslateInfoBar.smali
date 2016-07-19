.class public Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "TranslateInfoBar.java"

# interfaces
.implements Lorg/chromium/chrome/browser/infobar/SubPanelListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final AFTER_TRANSLATE_INFOBAR:I = 0x2

.field public static final ALWAYS_PANEL:I = 0x3

.field public static final BEFORE_TRANSLATE_INFOBAR:I = 0x0

.field public static final LANGUAGE_PANEL:I = 0x1

.field public static final MAX_INFOBAR_INDEX:I = 0x4

.field public static final MAX_PANEL_INDEX:I = 0x4

.field public static final NEVER_PANEL:I = 0x2

.field public static final NO_PANEL:I = 0x0

.field public static final TRANSLATE_ERROR_INFOBAR:I = 0x3

.field public static final TRANSLATING_INFOBAR:I = 0x1


# instance fields
.field private mInfoBarType:I

.field private mNativeTranslateInfoBarPtr:J

.field private final mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

.field private mOptionsPanelViewType:I

.field private final mShouldShowNeverBar:Z

.field private mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 58
    sget v0, Lorg/chromium/chrome/R$drawable;->infobar_translate:I

    invoke-direct {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 60
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p7

    array-length v1, p8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 63
    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_1

    .line 64
    new-instance v1, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    aget-object v2, p8, v0

    aget-object v4, p7, v0

    invoke-direct {v1, v2, v4}, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    .line 68
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mInfoBarType:I

    .line 69
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mShouldShowNeverBar:Z

    .line 70
    iput v6, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->swapPanel(I)V

    return-void
.end method

.method private actionFor(Z)I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v2

    .line 108
    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 125
    :cond_1
    :goto_0
    :pswitch_1
    return v0

    .line 110
    :pswitch_2
    if-nez p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :pswitch_3
    if-nez p1, :cond_0

    .line 115
    const/4 v0, 0x4

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private changeTranslateInfoBarType(I)V
    .locals 2

    .prologue
    .line 340
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 341
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mInfoBarType:I

    .line 342
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->replaceView(Landroid/view/View;)V

    .line 346
    :cond_0
    return-void

    .line 344
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Trying to change the InfoBar to a type that is invalid."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private formatAfterTranslateInfoBarMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 310
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 311
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v2, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$3;

    invoke-direct {v2, p0, p3}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$3;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;I)V

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 320
    return-object v0
.end method

.method private formatBeforeInfoBarMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 286
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v1, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;

    invoke-direct {v1, p0, p4}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 294
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v2, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$2;

    invoke-direct {v2, p0, p4}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$2;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 302
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getMessageText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    sget v0, Lorg/chromium/chrome/R$string;->translate_infobar_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    sget v0, Lorg/chromium/chrome/R$string;->translate_infobar_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->formatBeforeInfoBarMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->translate_infobar_translation_done:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->needsAlwaysPanel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget v1, Lorg/chromium/chrome/R$string;->more:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->formatAfterTranslateInfoBarMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_2
    sget v0, Lorg/chromium/chrome/R$string;->translate_infobar_translating:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 155
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->translate_button:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->needsAlwaysPanel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    sget v0, Lorg/chromium/chrome/R$string;->translate_button_done:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_3
    sget v0, Lorg/chromium/chrome/R$string;->translate_retry:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSecondaryButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 171
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->translate_nope:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->needsAlwaysPanel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    sget v0, Lorg/chromium/chrome/R$string;->translate_show_original:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private native nativeApplyTranslateOptions(JLjava/lang/String;Ljava/lang/String;ZZZ)V
.end method

.method private needsAlwaysPanel()Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->alwaysTranslateLanguageState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsNeverPanel()Z
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mShouldShowNeverBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTranslateInfoBarButtonClicked(I)V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->onOptionsChanged()V

    .line 221
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->onButtonClicked(I)V

    .line 222
    return-void
.end method

.method private panelFor(I)Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;
    .locals 2

    .prologue
    .line 267
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 276
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel;-><init>(Lorg/chromium/chrome/browser/infobar/SubPanelListener;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V

    goto :goto_0

    .line 272
    :pswitch_1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;-><init>(Lorg/chromium/chrome/browser/infobar/SubPanelListener;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V

    goto :goto_0

    .line 274
    :pswitch_2
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;-><init>(Lorg/chromium/chrome/browser/infobar/SubPanelListener;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setNativePtr(J)V
    .locals 1

    .prologue
    .line 329
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mNativeTranslateInfoBarPtr:J

    .line 330
    return-void
.end method

.method private static show(ILjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;[Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 9

    .prologue
    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private swapPanel(I)V
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    .line 260
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->replaceView(Landroid/view/View;)V

    .line 261
    return-void
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    if-nez v0, :cond_1

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    .line 194
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getMessageText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getSecondaryButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->needsAlwaysPanel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->triggeredFromMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->createAlwaysToggle(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->panelFor(I)Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;->createContent(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    goto :goto_0
.end method

.method getInfoBarType()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mInfoBarType:I

    return v0
.end method

.method public onButtonClicked(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mSubPanel:Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;->onButtonClicked(Z)V

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->actionFor(Z)I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    if-nez v1, :cond_1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->needsNeverPanel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->swapPanel(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->onTranslateInfoBarButtonClicked(I)V

    goto :goto_0
.end method

.method public onCloseButtonClicked()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->onButtonClicked(Z)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->onCloseButtonClicked()V

    goto :goto_0
.end method

.method protected onNativeDestroyed()V
    .locals 2

    .prologue
    .line 334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mNativeTranslateInfoBarPtr:J

    .line 335
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->onNativeDestroyed()V

    .line 336
    return-void
.end method

.method public onOptionsChanged()V
    .locals 9

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mNativeTranslateInfoBarPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 230
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->translate_infobar_always_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 232
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->toggleAlwaysTranslateLanguageState(Z)Z

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->optionsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mNativeTranslateInfoBarPtr:J

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->alwaysTranslateLanguageState()Z

    move-result v6

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->neverTranslateLanguageState()Z

    move-result v7

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->neverTranslateDomainState()Z

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->nativeApplyTranslateOptions(JLjava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public onPanelClosed(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->setControlsEnabled(Z)V

    .line 209
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iput v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->mOptionsPanelViewType:I

    .line 212
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->replaceView(Landroid/view/View;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->onTranslateInfoBarButtonClicked(I)V

    goto :goto_0
.end method
