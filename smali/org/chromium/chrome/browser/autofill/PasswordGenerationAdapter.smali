.class public Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;
.super Landroid/widget/BaseAdapter;
.source "PasswordGenerationAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;

.field private final mExplanationText:Ljava/lang/String;

.field private final mExplanationTextLinkRangeEnd:I

.field private final mExplanationTextLinkRangeStart:I

.field private final mPassword:Ljava/lang/String;

.field private final mSuggestionMeasuredWidth:I

.field private final mSuggestionTitle:Ljava/lang/String;

.field private final mViewTypes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mDelegate:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;

    .line 91
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mViewTypes:Ljava/util/List;

    .line 93
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mPassword:Ljava/lang/String;

    .line 94
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mSuggestionTitle:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mExplanationText:Ljava/lang/String;

    .line 96
    iput p7, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mExplanationTextLinkRangeStart:I

    .line 97
    iput p8, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mExplanationTextLinkRangeEnd:I

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->password_generation_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 103
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->getViewForType(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$id;->password_generation_suggestion:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 105
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 106
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mSuggestionMeasuredWidth:I

    .line 109
    return-void

    .line 91
    :cond_0
    new-array v0, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;)Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mDelegate:Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getViewForType(I)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 169
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unknown view type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 134
    :pswitch_0
    sget v2, Lorg/chromium/chrome/R$layout;->password_generation_popup_suggestion:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    sget v0, Lorg/chromium/chrome/R$id;->password_generation_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mSuggestionTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget v0, Lorg/chromium/chrome/R$id;->password_generation_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 173
    :goto_0
    return-object v0

    .line 142
    :pswitch_1
    sget v2, Lorg/chromium/chrome/R$layout;->password_generation_popup_explanation:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 143
    sget v0, Lorg/chromium/chrome/R$id;->password_generation_explanation:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mExplanationText:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v3, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$1;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$1;-><init>(Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;)V

    iget v4, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mExplanationTextLinkRangeStart:I

    iget v5, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mExplanationTextLinkRangeEnd:I

    const/16 v6, 0x12

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mSuggestionMeasuredWidth:I

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 166
    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 191
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    if-eqz p2, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->getViewForType(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
