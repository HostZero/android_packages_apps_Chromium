.class public Landroid/support/v7/internal/widget/k;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-class v0, Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/k;Z)Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/k;->g:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 657
    .line 2713
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/k;->g:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/k;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2715
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/k;->g:Z

    .line 2716
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/k;->h:Z

    .line 2717
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->f()V

    .line 658
    :goto_0
    or-int/lit8 v0, v0, 0x0

    .line 659
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->e()V

    .line 660
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->notifyChanged()V

    .line 664
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2720
    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 745
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 746
    if-gtz v2, :cond_1

    .line 756
    :cond_0
    return-void

    .line 749
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/k;->i:Z

    move v0, v1

    .line 750
    :goto_0
    if-ge v0, v2, :cond_0

    .line 751
    iget-object v3, p0, Landroid/support/v7/internal/widget/k;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 964
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 972
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 973
    const-string/jumbo v0, "UTF-8"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    .line 976
    :goto_0
    if-eq v0, v8, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 977
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 980
    :cond_0
    const-string/jumbo v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    :try_start_2
    sget-object v2, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1022
    if-eqz v1, :cond_1

    .line 1024
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1030
    :cond_1
    :goto_1
    return-void

    .line 985
    :cond_2
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->d:Ljava/util/List;

    .line 986
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 989
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 990
    if-eq v3, v8, :cond_6

    .line 993
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 996
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 997
    const-string/jumbo v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 998
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1019
    :catch_1
    move-exception v0

    .line 1020
    :try_start_5
    sget-object v2, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1022
    if-eqz v1, :cond_1

    .line 1024
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1027
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1001
    :cond_4
    const/4 v3, 0x0

    :try_start_7
    const-string/jumbo v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    const/4 v4, 0x0

    const-string/jumbo v5, "time"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1004
    const/4 v6, 0x0

    const-string/jumbo v7, "weight"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1006
    new-instance v7, Landroid/support/v7/internal/widget/n;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/n;-><init>(Ljava/lang/String;JF)V

    .line 1007
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1022
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 1024
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1027
    :cond_5
    :goto_3
    throw v0

    .line 1022
    :cond_6
    if-eqz v1, :cond_1

    .line 1024
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 1027
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 969
    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 398
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->d()V

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    .prologue
    .line 427
    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->d()V

    .line 429
    iget-object v3, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    .line 430
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 431
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 432
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    .line 433
    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_0

    .line 434
    monitor-exit v2

    move v0, v1

    .line 437
    :goto_1
    return v0

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->d()V

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->d()V

    .line 517
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 521
    :goto_0
    return-object v0

    .line 520
    :cond_0
    monitor-exit v1

    .line 521
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(I)V
    .locals 6

    .prologue
    .line 535
    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 536
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->d()V

    .line 538
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    .line 539
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/m;

    .line 542
    if-eqz v1, :cond_0

    .line 544
    const/high16 v1, 0x40a00000    # 5.0f

    .line 550
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v0, Landroid/support/v7/internal/widget/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/internal/widget/n;-><init>(Landroid/content/ComponentName;JF)V

    .line 1730
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1731
    if-eqz v0, :cond_3

    .line 1732
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/k;->i:Z

    .line 1733
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->e()V

    .line 2569
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/k;->h:Z

    if-nez v0, :cond_1

    .line 2570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 547
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2572
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/k;->i:Z

    if-eqz v0, :cond_2

    .line 2575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/k;->i:Z

    .line 2576
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2577
    new-instance v0, Landroid/support/v7/internal/widget/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/support/v7/internal/widget/k;B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v7/internal/widget/k;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->f:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Landroid/support/v4/e/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1736
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->notifyChanged()V

    .line 556
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
