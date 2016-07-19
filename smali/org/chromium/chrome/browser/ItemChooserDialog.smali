.class public Lorg/chromium/chrome/browser/ItemChooserDialog;
.super Ljava/lang/Object;
.source "ItemChooserDialog.java"


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

.field private mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

.field private mItemSelectedCallback:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;

.field private mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatus:Landroid/widget/TextView;

.field private mTitle:Lorg/chromium/ui/widget/TextViewWithClickableSpans;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mContext:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemSelectedCallback:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;

    .line 267
    iput-object p3, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->item_chooser_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 272
    sget v1, Lorg/chromium/chrome/R$id;->items:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    .line 273
    sget v1, Lorg/chromium/chrome/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 274
    sget v1, Lorg/chromium/chrome/R$id;->status:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    .line 275
    sget v1, Lorg/chromium/chrome/R$id;->dialog_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mTitle:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .line 277
    sget v1, Lorg/chromium/chrome/R$id;->not_found_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .line 280
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mTitle:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iget-object v2, p3, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mTitle:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mTitle:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 283
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 284
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 286
    sget v1, Lorg/chromium/chrome/R$id;->positive:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    .line 287
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    iget-object v2, p3, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mPositiveButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    new-instance v2, Lorg/chromium/chrome/browser/ItemChooserDialog$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ItemChooserDialog$1;-><init>(Lorg/chromium/chrome/browser/ItemChooserDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v1, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$layout;->item_chooser_dialog_row:I

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;-><init>(Lorg/chromium/chrome/browser/ItemChooserDialog;Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    .line 299
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 301
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 303
    sget-object v1, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->STARTING:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setState(Lorg/chromium/chrome/browser/ItemChooserDialog$State;)V

    .line 308
    sget v1, Lorg/chromium/chrome/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 309
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 310
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 312
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 315
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 316
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 317
    const/high16 v4, 0x42600000    # 56.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 318
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->showDialogForView(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ItemChooserDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ItemChooserDialog;)Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ItemChooserDialog;)Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemSelectedCallback:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ItemChooserDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private setState(Lorg/chromium/chrome/browser/ItemChooserDialog$State;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 407
    sget-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$3;->$SwitchMap$org$chromium$chrome$browser$ItemChooserDialog$State:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 427
    :goto_0
    return-void

    .line 409
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    iget-object v3, v3, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mSearching:Landroid/text/SpannableString;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    :cond_0
    move-object v1, v0

    move v0, v2

    .line 424
    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setVisibility(I)V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    iget-object v3, v3, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mStatusActive:Landroid/text/SpannableString;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 420
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->isEmpty()Z

    move-result v3

    .line 421
    iget-object v4, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mStatusIdleNoneFound:Landroid/text/SpannableString;

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iget-object v4, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    iget-object v4, v4, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mNoneFound:Landroid/text/SpannableString;

    invoke-virtual {v0, v4}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    if-eqz v3, :cond_0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    .line 421
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mLabels:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mStatusIdleSomeFound:Landroid/text/SpannableString;

    goto :goto_2

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showDialogForView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 325
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    .line 326
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lorg/chromium/chrome/browser/ItemChooserDialog$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ItemChooserDialog$2;-><init>(Lorg/chromium/chrome/browser/ItemChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 343
    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 348
    return-void
.end method


# virtual methods
.method public addItemsToList(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->addAll(Ljava/util/Collection;)V

    .line 367
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->PROGRESS_UPDATE_AVAILABLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setState(Lorg/chromium/chrome/browser/ItemChooserDialog$State;)V

    .line 368
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->clear()V

    .line 392
    sget-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->STARTING:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setState(Lorg/chromium/chrome/browser/ItemChooserDialog$State;)V

    .line 393
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 352
    return-void
.end method

.method public getDialogForTesting()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->setEnabled(Ljava/lang/String;Z)V

    .line 385
    return-void
.end method

.method public setErrorState(Landroid/text/SpannableString;Landroid/text/SpannableString;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 399
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mEmptyMessage:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method public setIdleState()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    sget-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->DISCOVERY_IDLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setState(Lorg/chromium/chrome/browser/ItemChooserDialog$State;)V

    .line 376
    return-void
.end method
