.class public final Lorg/chromium/third_party/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final ChartGridView:[I

.field public static final ChartGridView_borderDrawable:I = 0x2

.field public static final ChartGridView_primaryDrawable:I = 0x0

.field public static final ChartGridView_secondaryDrawable:I = 0x1

.field public static final ChartNetworkSeriesView:[I

.field public static final ChartNetworkSeriesView_fillColor:I = 0x1

.field public static final ChartNetworkSeriesView_fillColorSecondary:I = 0x2

.field public static final ChartNetworkSeriesView_strokeColor:I = 0x0

.field public static final ChartView:[I

.field public static final ChartView_optimalWidth:I = 0x0

.field public static final ChartView_optimalWidthWeight:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/third_party/android/R$styleable;->ChartGridView:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/chromium/third_party/android/R$styleable;->ChartNetworkSeriesView:[I

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/chromium/third_party/android/R$styleable;->ChartView:[I

    return-void

    .line 17
    :array_0
    .array-data 4
        0x7f01001a
        0x7f01001b
        0x7f01001c
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f01001d
        0x7f01001e
        0x7f01001f
    .end array-data

    .line 25
    :array_2
    .array-data 4
        0x7f010018
        0x7f010019
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
