# coding: utf8

import email
import imaplib

user='ivreone@gmail.com'
pasw = '*'

M = imaplib.IMAP4_SSL('imap.gmail.com')
M.login(user, pasw)
M.select()
typ, data = M.search(None, 'ALL')
id_list = data[0].split()
for num in id_list[::-1]:
    typ, data = M.fetch(num, '(RFC822)')
    raw_mail = data[0][1]

    mail=email.message_from_string(raw_mail)
    print(email.utils.parseaddr(mail['From']))

    # subject
 #   subject = mail.get('Subject')
 #   h = email.Header.decode_header(subject)
 #   msg = h[0][0].decode(h[0][1]) if h[0][1] else h[0][0]
 #   print(msg)

M.close()
M.logout()
