.class public Lorg/chromium/ui/picker/DateDialogNormalizer;
.super Ljava/lang/Object;
.source "DateDialogNormalizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static normalize(Landroid/widget/DatePicker;Landroid/widget/DatePicker$OnDateChangedListener;IIIJJ)V
    .locals 9

    .prologue
    .line 110
    invoke-static {p2, p3, p4}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(III)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v2

    .line 111
    invoke-static {p5, p6}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(J)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v1

    .line 112
    invoke-static/range {p7 .. p8}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(J)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v0

    .line 115
    iget-wide v4, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v6, v1, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    move-object v0, v1

    .line 118
    :cond_0
    iget-wide v4, v2, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v6, v1, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    move-object v8, v1

    .line 124
    :goto_0
    iget-wide v2, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v4, v1, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v6, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/chromium/ui/picker/DateDialogNormalizer;->setLimits(Landroid/widget/DatePicker;JJJ)V

    .line 126
    iget v0, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->year:I

    iget v1, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->month:I

    iget v2, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->day:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 127
    return-void

    .line 120
    :cond_1
    iget-wide v4, v2, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v6, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    move-object v8, v0

    .line 121
    goto :goto_0

    :cond_2
    move-object v8, v2

    goto :goto_0
.end method

.method private static setLimits(Landroid/widget/DatePicker;JJJ)V
    .locals 5

    .prologue
    const-wide v2, 0x8f68bc636000L

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 78
    :cond_0
    sub-long v0, p1, v2

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 80
    add-long v0, p1, v2

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 88
    invoke-virtual {p0, p5, p6}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 89
    invoke-virtual {p0, p3, p4}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 92
    invoke-virtual {p0, p5, p6}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_0
.end method
