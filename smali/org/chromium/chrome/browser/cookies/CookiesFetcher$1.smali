.class Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;
.super Landroid/os/AsyncTask;
.source "CookiesFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const/4 v2, 0x0

    .line 126
    :try_start_0
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/chromium/content/browser/crypto/CipherFactory;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 127
    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 131
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    # invokes: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->fetchFileName()Ljava/lang/String;
    invoke-static {v4}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$100(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 135
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v4, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string/jumbo v3, "c0Ok135"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 161
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cooke Restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    .line 165
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "Error restoring cookies."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 144
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {v1}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->createFromStream(Ljava/io/DataInputStream;)Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 153
    :catch_2
    move-exception v2

    :try_start_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    # invokes: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->scheduleDeleteCookiesFile()V
    invoke-static {v2}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$200(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 161
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 163
    :catch_3
    move-exception v1

    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cooke Restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :catch_4
    move-exception v1

    .line 165
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "Error restoring cookies."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    :catch_5
    move-exception v1

    move-object v1, v2

    :goto_2
    :try_start_6
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "IOException during Cookie Restore"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 161
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_0

    .line 163
    :catch_6
    move-exception v1

    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cooke Restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :catch_7
    move-exception v1

    .line 165
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "Error restoring cookies."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 157
    :catch_8
    move-exception v1

    .line 158
    :goto_3
    :try_start_8
    const-string/jumbo v3, "CookiesFetcher"

    const-string/jumbo v4, "Error restoring cookies."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 161
    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_0

    .line 163
    :catch_9
    move-exception v1

    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cooke Restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :catch_a
    move-exception v1

    .line 165
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "Error restoring cookies."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    :goto_4
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c

    .line 166
    :cond_3
    :goto_5
    throw v0

    .line 163
    :catch_b
    move-exception v1

    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cooke Restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 164
    :catch_c
    move-exception v1

    .line 165
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "Error restoring cookies."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 160
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 157
    :catch_d
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    .line 156
    :catch_e
    move-exception v2

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 21

    .prologue
    .line 174
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    # getter for: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mNativeCookiesFetcher:J
    invoke-static {v3}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$300(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)J

    move-result-wide v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getCreationDate()J

    move-result-wide v10

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getExpirationDate()J

    move-result-wide v12

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getLastAccessDate()J

    move-result-wide v14

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->isSecure()Z

    move-result v16

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->isHttpOnly()Z

    move-result v17

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->isSameSite()Z

    move-result v18

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->getPriority()I

    move-result v19

    # invokes: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->nativeRestoreCookies(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V
    invoke-static/range {v2 .. v19}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$400(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method
