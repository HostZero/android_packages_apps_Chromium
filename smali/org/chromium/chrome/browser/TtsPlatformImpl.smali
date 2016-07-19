.class Lorg/chromium/chrome/browser/TtsPlatformImpl;
.super Ljava/lang/Object;
.source "TtsPlatformImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCurrentLanguage:Ljava/lang/String;

.field private mInitialized:Z

.field private mNativeTtsPlatformImplAndroid:J

.field private mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

.field protected final mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mVoices:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(JLandroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    .line 73
    iput-wide p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    .line 74
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lorg/chromium/chrome/browser/TtsPlatformImpl$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$1;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;)V

    invoke-direct {v0, p3, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 87
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->addOnUtteranceProgressListener()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFF)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->speak(ILjava/lang/String;Ljava/lang/String;FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/TtsPlatformImpl;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->initialize()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/TtsPlatformImpl;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/TtsPlatformImpl;JI)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->nativeOnEndEvent(JI)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/TtsPlatformImpl;JI)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->nativeOnErrorEvent(JI)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/TtsPlatformImpl;JI)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->nativeOnStartEvent(JI)V

    return-void
.end method

.method private static create(JLandroid/content/Context;)Lorg/chromium/chrome/browser/TtsPlatformImpl;
    .locals 2

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/LollipopTtsPlatformImpl;-><init>(JLandroid/content/Context;)V

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/TtsPlatformImpl;-><init>(JLandroid/content/Context;)V

    goto :goto_0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    .line 114
    return-void
.end method

.method private getVoiceCount()I
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mVoices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getVoiceLanguage(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mVoices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;

    # getter for: Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->mLanguage:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->access$300(Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVoiceName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mVoices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;

    # getter for: Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->mName:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;->access$200(Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 284
    sget-boolean v0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :cond_0
    const-string/jumbo v0, "TtsPlatformImpl:initialize"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 295
    iget-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mVoices:Ljava/util/ArrayList;

    .line 299
    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_5

    .line 300
    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    if-lez v1, :cond_4

    .line 303
    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    .line 304
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_3
    new-instance v3, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lorg/chromium/chrome/browser/TtsPlatformImpl$TtsVoice;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/TtsPlatformImpl$1;)V

    .line 308
    iget-object v1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mVoices:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    .line 316
    iget-wide v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->nativeVoicesChanged(J)V

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    # invokes: Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->speak()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;->access$1000(Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;)V

    .line 320
    :cond_6
    const-string/jumbo v0, "TtsPlatformImpl:initialize"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 321
    return-void

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    return v0
.end method

.method private native nativeOnEndEvent(JI)V
.end method

.method private native nativeOnErrorEvent(JI)V
.end method

.method private native nativeOnStartEvent(JI)V
.end method

.method private native nativeVoicesChanged(J)V
.end method

.method private speak(ILjava/lang/String;Ljava/lang/String;FFF)Z
    .locals 9

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFFLorg/chromium/chrome/browser/TtsPlatformImpl$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    .line 171
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 177
    iput-object p3, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mCurrentLanguage:Ljava/lang/String;

    .line 180
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p5}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 183
    invoke-virtual {p0, p2, p6, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->callSpeak(Ljava/lang/String;FI)I

    move-result v0

    .line 184
    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mPendingUtterance:Lorg/chromium/chrome/browser/TtsPlatformImpl$PendingUtterance;

    .line 194
    :cond_1
    return-void
.end method


# virtual methods
.method protected addOnUtteranceProgressListener()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lorg/chromium/chrome/browser/TtsPlatformImpl$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/TtsPlatformImpl$5;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 264
    return-void
.end method

.method protected callSpeak(Ljava/lang/String;FI)I
    .locals 6

    .prologue
    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    float-to-double v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 273
    const-string/jumbo v1, "volume"

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    const-string/jumbo v1, "utteranceId"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method protected sendEndEventOnUiThread(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method protected sendErrorEventOnUiThread(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$3;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl$3;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method protected sendStartEventOnUiThread(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/TtsPlatformImpl$4;-><init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method
