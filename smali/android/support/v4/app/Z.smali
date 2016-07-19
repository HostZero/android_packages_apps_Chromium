.class public final Landroid/support/v4/app/Z;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field public e:Landroid/graphics/Bitmap;

.field public f:Ljava/lang/CharSequence;

.field g:I

.field h:Z

.field public i:Landroid/support/v4/app/ak;

.field j:I

.field k:I

.field l:Z

.field public m:Ljava/util/ArrayList;

.field n:Z

.field o:I

.field p:I

.field public q:Landroid/app/Notification;

.field public r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Z;->h:Z

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->m:Ljava/util/ArrayList;

    .line 913
    iput-boolean v4, p0, Landroid/support/v4/app/Z;->n:Z

    .line 916
    iput v4, p0, Landroid/support/v4/app/Z;->o:I

    .line 917
    iput v4, p0, Landroid/support/v4/app/Z;->p:I

    .line 921
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    .line 936
    iput-object p1, p0, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    .line 939
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 940
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 941
    iput v4, p0, Landroid/support/v4/app/Z;->g:I

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->r:Ljava/util/ArrayList;

    .line 943
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1291
    if-eqz p2, :cond_0

    .line 1292
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1572
    if-nez p0, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-object p0

    .line 1573
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1574
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1561
    invoke-static {}, Landroid/support/v4/app/V;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 2568
    new-instance v1, Landroid/support/v4/app/aa;

    invoke-direct {v1}, Landroid/support/v4/app/aa;-><init>()V

    .line 1561
    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/ac;->a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 988
    return-object p0
.end method

.method public final a(IIZ)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1060
    const/16 v0, 0x64

    iput v0, p0, Landroid/support/v4/app/Z;->j:I

    .line 1061
    iput p2, p0, Landroid/support/v4/app/Z;->k:I

    .line 1062
    iput-boolean p3, p0, Landroid/support/v4/app/Z;->l:Z

    .line 1063
    return-object p0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;
    .locals 2

    .prologue
    .line 1461
    iget-object v0, p0, Landroid/support/v4/app/Z;->m:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/W;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/W;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 951
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    .line 1084
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1011
    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    .line 1012
    return-object p0
.end method

.method public final a(Z)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Z;->h:Z

    .line 960
    return-object p0
.end method

.method public final b(I)Landroid/support/v4/app/Z;
    .locals 0

    .prologue
    .line 1316
    iput p1, p0, Landroid/support/v4/app/Z;->g:I

    .line 1317
    return-object p0
.end method

.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1096
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1019
    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    .line 1020
    return-object p0
.end method

.method public final b(Z)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/Z;->a(IZ)V

    .line 1226
    return-object p0
.end method

.method public final c(I)Landroid/support/v4/app/Z;
    .locals 0

    .prologue
    .line 1510
    iput p1, p0, Landroid/support/v4/app/Z;->o:I

    .line 1511
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1051
    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->f:Ljava/lang/CharSequence;

    .line 1052
    return-object p0
.end method

.method public final c(Z)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1245
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/Z;->a(IZ)V

    .line 1246
    return-object p0
.end method

.method public final d(I)Landroid/support/v4/app/Z;
    .locals 0

    .prologue
    .line 1522
    iput p1, p0, Landroid/support/v4/app/Z;->p:I

    .line 1523
    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1129
    return-object p0
.end method

.method public final d(Z)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Z;->n:Z

    .line 1257
    return-object p0
.end method
