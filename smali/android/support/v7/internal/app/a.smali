.class public final Landroid/support/v7/internal/app/a;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# static fields
.field private static final a:[Ljava/lang/Class;

.field private static final b:[I

.field private static final c:Ljava/util/Map;


# instance fields
.field private final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/internal/app/a;->a:[Ljava/lang/Class;

    .line 66
    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/internal/app/a;->b:[I

    .line 70
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    sput-object v0, Landroid/support/v7/internal/app/a;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 150
    const-string/jumbo v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 155
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 156
    iget-object v0, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 158
    const/4 v0, -0x1

    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 160
    const-string/jumbo v0, "android.widget."

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/app/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 170
    iget-object v2, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 171
    iget-object v2, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v2, v4

    :goto_0
    return-object v0

    .line 162
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/app/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 170
    iget-object v2, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 171
    iget-object v2, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v2, v4

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    iget-object v0, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 171
    iget-object v0, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v0, v4

    move-object v0, v1

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 171
    iget-object v2, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    aput-object v1, v2, v4

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 199
    sget-object v0, Landroid/support/v7/internal/app/a;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 202
    if-nez v0, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 207
    sget-object v1, Landroid/support/v7/internal/app/a;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 208
    sget-object v1, Landroid/support/v7/internal/app/a;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 211
    iget-object v1, p0, Landroid/support/v7/internal/app/a;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p2

    .line 204
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 78
    .line 82
    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1224
    :goto_0
    sget-object v0, Landroid/support/v7/a/a;->cw:[I

    invoke-virtual {v1, p4, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1226
    if-eqz p6, :cond_8

    .line 1228
    sget v0, Landroid/support/v7/a/a;->cx:I

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1230
    :goto_1
    if-nez v0, :cond_0

    .line 1232
    sget v0, Landroid/support/v7/a/a;->cy:I

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1234
    if-eqz v0, :cond_0

    .line 1235
    const-string/jumbo v2, "AppCompatViewInflater"

    const-string/jumbo v5, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v0

    .line 1239
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1241
    if-eqz v2, :cond_2

    instance-of v0, v1, Landroid/support/v7/internal/view/a;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/a;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->a()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1245
    :cond_1
    new-instance v0, Landroid/support/v7/internal/view/a;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    move-object v1, v0

    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 93
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 135
    :goto_3
    if-nez v0, :cond_4

    if-eq p3, v1, :cond_4

    .line 138
    invoke-direct {p0, v1, p2, p4}, Landroid/support/v7/internal/app/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 141
    :cond_4
    if-eqz v0, :cond_5

    .line 2181
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2183
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->C(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-nez v2, :cond_6

    .line 146
    :cond_5
    :goto_4
    return-object v0

    .line 93
    :sswitch_0
    const-string/jumbo v4, "TextView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "ImageView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "Button"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "EditText"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v4, "Spinner"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v4, "ImageButton"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v4, "CheckBox"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v4, "RadioButton"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v4, "CheckedTextView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v4, "AutoCompleteTextView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v4, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v4, "RatingBar"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v4, "SeekBar"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0xc

    goto/16 :goto_2

    .line 95
    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 98
    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/z;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 101
    :pswitch_2
    new-instance v0, Landroid/support/v7/widget/s;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 104
    :pswitch_3
    new-instance v0, Landroid/support/v7/widget/w;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 107
    :pswitch_4
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 110
    :pswitch_5
    new-instance v0, Landroid/support/v7/widget/x;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 113
    :pswitch_6
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 116
    :pswitch_7
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 119
    :pswitch_8
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 122
    :pswitch_9
    new-instance v0, Landroid/support/v7/widget/q;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 125
    :pswitch_a
    new-instance v0, Landroid/support/v7/widget/A;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/A;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 128
    :pswitch_b
    new-instance v0, Landroid/support/v7/widget/D;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 131
    :pswitch_c
    new-instance v0, Landroid/support/v7/widget/E;

    invoke-direct {v0, v1, p4}, Landroid/support/v7/widget/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 2189
    :cond_6
    sget-object v2, Landroid/support/v7/internal/app/a;->b:[I

    invoke-virtual {v1, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2190
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2191
    if-eqz v2, :cond_7

    .line 2192
    new-instance v3, Landroid/support/v7/internal/app/b;

    invoke-direct {v3, v0, v2}, Landroid/support/v7/internal/app/b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2194
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_4

    :cond_8
    move v0, v3

    goto/16 :goto_1

    :cond_9
    move-object v1, p3

    goto/16 :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
