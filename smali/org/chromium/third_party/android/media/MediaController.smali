.class public Lorg/chromium/third_party/android/media/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Landroid/support/v4/media/f;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgressBar:Landroid/widget/SeekBar;

.field private mProgressGroup:Landroid/view/ViewGroup;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowNext:Z

.field private mShowPrev:Z

.field private mStateListener$711a56f1:Landroid/support/customtabs/a;

.field private mUseFastForward:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/third_party/android/media/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$1;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$1;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mStateListener$711a56f1:Landroid/support/customtabs/a;

    .line 252
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$2;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$2;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 290
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$3;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$3;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 337
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$4;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$4;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$5;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$5;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 78
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->mContext:Landroid/content/Context;

    .line 79
    iput-boolean v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mUseFastForward:Z

    .line 80
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    sget v1, Lorg/chromium/third_party/android/media/R$layout;->media_controller:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->initControllerView()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$1;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$1;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mStateListener$711a56f1:Landroid/support/customtabs/a;

    .line 252
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$2;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$2;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 290
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$3;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$3;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 337
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$4;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$4;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lorg/chromium/third_party/android/media/MediaController$5;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/media/MediaController$5;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 88
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->mContext:Landroid/content/Context;

    .line 89
    iput-boolean p2, p0, Lorg/chromium/third_party/android/media/MediaController;->mUseFastForward:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$202(Lorg/chromium/third_party/android/media/MediaController;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/chromium/third_party/android/media/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/third_party/android/media/MediaController;)Landroid/support/v4/media/f;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/third_party/android/media/MediaController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/third_party/android/media/MediaController;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/media/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v0}, Landroid/support/v4/media/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v0}, Landroid/support/v4/media/f;->b()V

    .line 276
    :goto_0
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->updatePausePlay()V

    .line 277
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v0}, Landroid/support/v4/media/f;->a()V

    goto :goto_0
.end method

.method private initControllerView()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 126
    sget v0, Lorg/chromium/third_party/android/media/R$id;->pause:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 127
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 129
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    sget v0, Lorg/chromium/third_party/android/media/R$id;->ffwd:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 133
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mUseFastForward:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 138
    :cond_1
    sget v0, Lorg/chromium/third_party/android/media/R$id;->rew:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 139
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mUseFastForward:Z

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    :cond_2
    sget v0, Lorg/chromium/third_party/android/media/R$id;->next:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 146
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mListenersSet:Z

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 149
    :cond_3
    sget v0, Lorg/chromium/third_party/android/media/R$id;->prev:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 150
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mListenersSet:Z

    if-nez v0, :cond_4

    .line 151
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 154
    :cond_4
    sget v0, Lorg/chromium/third_party/android/media/R$id;->mediacontroller_progress_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    .line 156
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/third_party/android/media/R$id;->mediacontroller_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    .line 158
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 159
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 160
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 164
    :cond_5
    sget v0, Lorg/chromium/third_party/android/media/R$id;->time:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 165
    sget v0, Lorg/chromium/third_party/android/media/R$id;->time_current:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/media/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 167
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 169
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->installPrevNextListeners()V

    .line 170
    return-void

    :cond_6
    move v0, v2

    .line 135
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 141
    goto/16 :goto_1
.end method

.method private installPrevNextListeners()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mShowNext:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mShowPrev:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 367
    :cond_1
    return-void
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    div-int/lit16 v0, p1, 0x3e8

    .line 213
    rem-int/lit8 v1, v0, 0x3c

    .line 214
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 215
    div-int/lit16 v0, v0, 0xe10

    .line 217
    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 218
    if-lez v0, :cond_0

    .line 219
    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v0}, Landroid/support/v4/media/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 112
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mStateListener$711a56f1:Landroid/support/customtabs/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/f;->a(Landroid/support/customtabs/a;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mStateListener$711a56f1:Landroid/support/customtabs/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/f;->b(Landroid/support/customtabs/a;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 328
    const-class v0, Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 334
    const-class v0, Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/chromium/third_party/android/media/MediaController;->updateProgress()J

    .line 206
    invoke-virtual {p0}, Lorg/chromium/third_party/android/media/MediaController;->updateButtons()V

    .line 207
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->updatePausePlay()V

    .line 208
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 322
    invoke-virtual {p0}, Lorg/chromium/third_party/android/media/MediaController;->updateButtons()V

    .line 323
    return-void
.end method

.method public setMediaPlayer(Landroid/support/v4/media/f;)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/chromium/third_party/android/media/MediaController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->mStateListener$711a56f1:Landroid/support/customtabs/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/f;->b(Landroid/support/customtabs/a;)V

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mStateListener$711a56f1:Landroid/support/customtabs/a;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/f;->a(Landroid/support/customtabs/a;)V

    .line 105
    :cond_1
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    .line 106
    invoke-direct {p0}, Lorg/chromium/third_party/android/media/MediaController;->updatePausePlay()V

    .line 107
    return-void
.end method

.method updateButtons()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v0}, Landroid/support/v4/media/f;->g()I

    move-result v3

    .line 178
    invoke-virtual {p0}, Lorg/chromium/third_party/android/media/MediaController;->isEnabled()Z

    move-result v4

    .line 179
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 180
    and-int/lit8 v0, v3, 0x10

    if-nez v0, :cond_0

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    .line 182
    :goto_0
    iget-object v5, p0, Lorg/chromium/third_party/android/media/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 185
    iget-object v5, p0, Lorg/chromium/third_party/android/media/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_a

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_a

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 189
    iget-object v5, p0, Lorg/chromium/third_party/android/media/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_b

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_b

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 192
    :cond_3
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 193
    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mShowPrev:Z

    .line 195
    iget-object v5, p0, Lorg/chromium/third_party/android/media/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_d

    iget-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mShowPrev:Z

    if-eqz v0, :cond_d

    move v0, v2

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 197
    :cond_5
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 198
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_e

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mShowNext:Z

    .line 200
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_f

    iget-boolean v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mShowNext:Z

    if-eqz v3, :cond_f

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 202
    :cond_7
    return-void

    :cond_8
    move v0, v1

    .line 180
    goto :goto_0

    :cond_9
    move v0, v1

    .line 182
    goto :goto_1

    :cond_a
    move v0, v1

    .line 185
    goto :goto_2

    :cond_b
    move v0, v1

    .line 189
    goto :goto_3

    :cond_c
    move v0, v1

    .line 193
    goto :goto_4

    :cond_d
    move v0, v1

    .line 195
    goto :goto_5

    :cond_e
    move v0, v1

    .line 198
    goto :goto_6

    :cond_f
    move v2, v1

    .line 200
    goto :goto_7
.end method

.method public updateProgress()J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 226
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mDragging:Z

    if-eqz v0, :cond_2

    :cond_0
    move-wide v0, v2

    .line 249
    :cond_1
    :goto_0
    return-wide v0

    .line 229
    :cond_2
    iget-object v0, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v0}, Landroid/support/v4/media/f;->d()J

    move-result-wide v0

    .line 230
    iget-object v4, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v4}, Landroid/support/v4/media/f;->c()J

    move-result-wide v4

    .line 231
    cmp-long v2, v4, v2

    if-gtz v2, :cond_5

    .line 233
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mEndTime:Landroid/widget/TextView;

    long-to-int v3, v4

    invoke-direct {p0, v3}, Lorg/chromium/third_party/android/media/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_4
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mCurrentTime:Landroid/widget/TextView;

    long-to-int v3, v0

    invoke-direct {p0, v3}, Lorg/chromium/third_party/android/media/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_5
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_3

    .line 235
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    :cond_6
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    div-long/2addr v2, v4

    .line 238
    iget-object v6, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    long-to-int v2, v2

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 240
    iget-object v2, p0, Lorg/chromium/third_party/android/media/MediaController;->mController:Landroid/support/v4/media/f;

    invoke-virtual {v2}, Landroid/support/v4/media/f;->f()I

    move-result v2

    .line 241
    iget-object v3, p0, Lorg/chromium/third_party/android/media/MediaController;->mProgressBar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_1
.end method
